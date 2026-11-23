// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationCompositeApplicationParameters {
  /// A map from a component URI to the service account that deploys the
  /// component. Keys use the format
  /// `projects/{project}/locations/{location}/spaces/{space}/applicationTemplates/{application_template}/components/{component}`
  /// and values use the format
  /// `projects/{project}/serviceAccounts/{email_address}`.
  final pulumi.Input<Map<String, String>?>? serviceAccountMap;

  /// Creates a new [ApplicationCompositeApplicationParameters].
  /// [serviceAccountMap] A map from a component URI to the service account that deploys the
  const ApplicationCompositeApplicationParameters({
    this.serviceAccountMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountMap': ?serviceAccountMap,
    };
  }

  factory ApplicationCompositeApplicationParameters.fromMap(Map<String, dynamic> map) {
    return ApplicationCompositeApplicationParameters(
      serviceAccountMap: (() { final guardedValue = map['serviceAccountMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
