#!/bin/bash
echo "🧠 Shensist V6 Resonance - 正在初始化引擎..."

# 创建配置目录
mkdir -p config

# 检测核心文件是否存在
if [ ! -f "config/model.gguf" ]; then
    echo "📥 正在从云端调取逻辑核心 (2.0GB)..."
    # 【请注意】我在这里放了一个占位符，请你把括号里的内容替换为你找到的那个真实 URL
    # 示例: curl -L -o config/model.gguf https://huggingface.co/xxx/resolve/main/xxx.gguf
    curl -L -o config/model.gguf "你刚才找到的那个网络下载链接"
else
    echo "✅ 逻辑核心已就绪，跳过下载。"
fi

echo "📦 正在配置逻辑链路..."
# 如果你有 requirements.txt，会执行安装
[ -f "requirements.txt" ] && pip install -r requirements.txt

echo "✨ 神思 V6 部署完成！输入 python3 main.py 启动共振。"
