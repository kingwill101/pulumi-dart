import 'package:pulumi/pulumi.dart' as pulumi;

enum WebhookFormat implements pulumi.PulumiEnum<String> {
  valueRaw("raw"),
  valueSlack("slack"),
  pulumiDeployments("pulumi_deployments"),
  microsoftTeams("ms_teams");

  const WebhookFormat(this.wireValue);
  @override
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
