# Homebrew Tap for Neon Law Foundation

This is the official Homebrew tap for Swift CLI tools from the Neon Law Foundation.

## Installation

```bash
# Add the tap
brew tap neon-law-foundation/tap

# Install the Standards CLI
brew install standards
```

## Available Formulas

### standards

Legal standards CLI for Markdown linting, PDF conversion, and document management.

**Commands:**
- `standards lint <directory> [--fix]` - Validate Markdown files have lines ≤120 characters
- `standards voice <directory>` - Check Markdown files for active voice and tone compliance
- `standards setup` - Create ~/Standards structure and fetch projects
- `standards sync` - Sync all projects (git pull existing repos)
- `standards zip [directory]` - Convert Markdown files to .docx, zip them, and open Mail.app
- `standards pdf <file>` - Convert a standard Markdown file to PDF

## Updating

```bash
brew update
brew upgrade standards
```

## Development

This tap is automatically updated via GitHub Actions when new releases are tagged in the [Notations repository](https://github.com/neon-law-foundation/Notations).
