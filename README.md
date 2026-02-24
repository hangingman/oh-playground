# oh-playground

本リポジトリは、**OpenHands** を活用した **AI による完全自律開発** の実験場です。

## プロジェクトの目的
AI が人間からのハイレベルな要望を受け取り、計画立案、要件定義、設計、実装、そして品質保証（QA）までを自律的に完結させるワークフローを構築・検証することを目的としています。

## 開発フロー
1. **人間（User）**: 実現したい機能や修正したいバグの要望を指示します。
2. **AI（OpenHands）**:
    - リポジトリ内の MicroAgent (`.openhands/microagents/`) を活用して自律的に思考します。
    - `memory-bank/` を参照・更新しながら、プロジェクトの文脈を維持します。
    - 計画立案から実装、テストまでを自動で行います。
3. **人間（User）**: 必要に応じて進捗を確認し、AI が行き詰まった場合のみデバッグや軌道修正をサポートします。

## ディレクトリ構成
- `.openhands/`: OpenHands の設定や MicroAgent の定義を格納します。
- `memory-bank/`: Cline や他の AI アシスタントがプロジェクトの状態を把握するためのドキュメント群です。
- `docker-compose.yml`: OpenHands を実行するための環境定義です。

## セットアップ
本リポジトリをクローンした後、以下のコマンドで OpenHands を起動できます。

```bash
docker-compose up -d
```

起動後、ブラウザで `http://localhost:3000` にアクセスしてください。

## 技術スタック
- **Core**: OpenHands
- **Language**: Python 3.10+ (推奨)
- **Rules**: PEP8
- **Documentation**: Memory Bank (Markdown形式)
