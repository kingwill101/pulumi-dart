import 'package:pulumi/pulumi.dart' as pulumi;

/// The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
enum ExportConfigDesiredState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  paused("PAUSED"),
  permissionDenied("PERMISSION_DENIED"),
  notFound("NOT_FOUND");

  const ExportConfigDesiredState(this.wireValue);
  @override
  final String wireValue;

  static ExportConfigDesiredState fromValue(String value) {
    for (final item in ExportConfigDesiredState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExportConfigDesiredState value: $value');
  }
}
