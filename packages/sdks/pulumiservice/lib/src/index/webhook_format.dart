enum WebhookFormat {
  valueRaw("raw"),
  valueSlack("slack"),
  pulumiDeployments("pulumi_deployments"),
  microsoftTeams("ms_teams");

  const WebhookFormat(this.wireValue);
  final String wireValue;

  static WebhookFormat fromValue(String value) {
    for (final item in WebhookFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookFormat value: $value');
  }
}

