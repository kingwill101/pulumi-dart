/// Automation config value used by `pulumi config` commands.
class AutomationConfigValue {
  const AutomationConfigValue({required this.value, required this.secret});

  final String value;
  final bool secret;
}
