# 開発ガイド (Development Guide)

## OpenHands 環境のセットアップ

### 1. 環境の起動
本プロジェクトのルートディレクトリで以下のコマンドを実行します。
```bash
docker compose up -d
```
※ `docker-compose.yml` 内で `BROWSERBASE_API_KEY` などの環境変数が未設定でも動作するように構成されています。

### 2. GUI へのアクセス
ブラウザで以下の URL にアクセスします。
- **URL**: [http://localhost:3000](http://localhost:3000)

### 3. 初期設定
初回アクセス時に設定ポップアップが表示されます（または画面右下の設定アイコンから変更可能）。以下の項目を設定してください。
- **LLM Provider**: 使用するプロバイダー（Anthropic, OpenAI, Google 等）を選択。
- **LLM Model**: 使用するモデル名を入力。
- **API Key**: 選択したプロバイダーの API キーを入力。

### 4. ワークスペース
OpenHands のサンドボックス内 `/opt/openhands/workspace` は、ホストマシンの本プロジェクトルートディレクトリにマウントされています。サブモジュールでの開発もこのディレクトリ内で行われます。

## 開発フロー
1. **計画**: Memory Bank を確認し、タスクの全体像を把握する。
2. **実装**: OpenHands または Cline を使用してコードを記述する。
3. **検証**: サンドボックス内でテストを実行する。
4. **記録**: 作業結果を Memory Bank (`progress.md`, `activeContext.md`) に反映する。