// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  final pulumi.Input<String>? certificateContent;
  /// The name of the IoTHub that this certificate will be attached to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubName;
  /// Is the certificate verified? Defaults to `false`.
  final pulumi.Input<bool>? isVerified;
  /// Specifies the name of the IotHub Certificate resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the IotHub Certificate resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [CertificateState].
  /// [certificateContent] The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  /// [iothubName] The name of the IoTHub that this certificate will be attached to. Changing this forces a new resource to be created.
  /// [isVerified] Is the certificate verified? Defaults to `false`.
  /// [name] Specifies the name of the IotHub Certificate resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IotHub Certificate resource has to be created. Changing this forces a new resource to be created.
  const CertificateState({
    this.certificateContent,
    this.iothubName,
    this.isVerified,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateContent': ?certificateContent,
      'iothubName': ?iothubName,
      'isVerified': ?isVerified,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      certificateContent: (() { final guardedValue = map['certificateContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iothubName: (() { final guardedValue = map['iothubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isVerified: (() { final guardedValue = map['isVerified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
