// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationRolesApisConfigApi {
  /// API name, such as `compute.googleapis.com`.
  final pulumi.Input<String> api;
  /// (Output)
  /// Whether Application Design Center added the API.
  final pulumi.Input<bool?>? systemProvided;

  /// Creates a new [ApplicationRolesApisConfigApi].
  /// [api] API name, such as `compute.googleapis.com`.
  /// [systemProvided] (Output)
  const ApplicationRolesApisConfigApi({
    required this.api,
    this.systemProvided,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': api,
      'systemProvided': ?systemProvided,
    };
  }

  factory ApplicationRolesApisConfigApi.fromMap(Map<String, dynamic> map) {
    return ApplicationRolesApisConfigApi(
      api: pulumi.Input.fromValue(map['api'] as String),
      systemProvided: (() { final guardedValue = map['systemProvided']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
