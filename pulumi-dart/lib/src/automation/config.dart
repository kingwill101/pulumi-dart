/// Automation config value used by `pulumi config` commands.
class AutomationConfigValue {
  const AutomationConfigValue({required this.value, required this.secret});

  final String value;
  final bool secret;
}

/// Automation stack output value with secret metadata.
class AutomationOutputValue {
  const AutomationOutputValue({required this.value, required this.secret});

  final dynamic value;
  final bool secret;
}
