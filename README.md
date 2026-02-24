# oh-playground

本リポジトリは、**OpenHands** を活用した **AI による完全自律開発** の実験場です。

## プロジェクトの目的
AI が人間からのハイレベルな要望を受け取り、計画立案、要件定義、設計、実装、そして品質保証（QA）までを自律的に完結させるワークフローを構築・検証することを目的としています。

## 開発フロー
本プロジェクトは**メタリポジトリ**であり、実際の開発はサブモジュール内で行われます。

1. **人間（User）**: 実現したい機能や修正したいバグの要望を指示します。
2. **AI（OpenHands）**:
    - **初期化**: 開発開始時に `git submodule update --init --recursive` を実行します。
    - **思考**: `.openhands/microagents/repo.md` の指針に従い、サブモジュールを作業境界として認識します。
    - **実行**: `memory-bank/` を参照しながら、サブモジュール内で計画・実装・テストを自律的に行います。
3. **人間（User）**: 必要に応じて進捗を確認し、AI が行き詰まった場合のみデバッグや軌道修正をサポートします。

## ディレクトリ構成
- `.openhands/`: OpenHands の設定や MicroAgent の定義を格納します。
- `memory-bank/`: プロジェクトの状態を把握するためのドキュメント群です。
- `<submodule-name>/`: 実際のプロダクト開発が行われる Git サブモジュールです。
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
