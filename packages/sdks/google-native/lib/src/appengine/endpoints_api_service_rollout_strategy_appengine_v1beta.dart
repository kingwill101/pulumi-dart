import 'package:pulumi/pulumi.dart' as pulumi;

/// Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be omitted.
enum EndpointsApiServiceRolloutStrategyAppengineV1beta implements pulumi.PulumiEnum<String> {
  unspecifiedRolloutStrategy("UNSPECIFIED_ROLLOUT_STRATEGY"),
  fixed("FIXED"),
  managed("MANAGED");

  const EndpointsApiServiceRolloutStrategyAppengineV1beta(this.wireValue);
  @override
  final String wireValue;

  static EndpointsApiServiceRolloutStrategyAppengineV1beta fromValue(String value) {
    for (final item in EndpointsApiServiceRolloutStrategyAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointsApiServiceRolloutStrategyAppengineV1beta value: $value');
  }
}
