mod language_servers;

use zed_extension_api::{self as zed, LanguageServerId, Result};

use crate::language_servers::Emmet;

struct LatteExtension {
    emmet: Option<Emmet>,
}

impl zed::Extension for LatteExtension {
    fn new() -> Self {
        Self { emmet: None }
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        _worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        match language_server_id.as_ref() {
            Emmet::LANGUAGE_SERVER_ID => {
                let emmet = self.emmet.get_or_insert_with(Emmet::new);
                emmet.language_server_command(language_server_id)
            }
            language_server_id => Err(format!("unknown language server: {language_server_id}")),
        }
    }
}

zed::register_extension!(LatteExtension);
