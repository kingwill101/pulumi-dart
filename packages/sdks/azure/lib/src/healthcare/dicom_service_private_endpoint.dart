// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DicomServicePrivateEndpoint {
  /// The ID of the Healthcare DICOM Service.
  final pulumi.Input<String>? id;

  /// Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [DicomServicePrivateEndpoint].
  /// [id] The ID of the Healthcare DICOM Service.
  /// [name] Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created.
  DicomServicePrivateEndpoint({this.id, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'name': ?name};
  }

  factory DicomServicePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return DicomServicePrivateEndpoint(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
