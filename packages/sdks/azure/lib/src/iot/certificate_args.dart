// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_iot_certificate_certificate_args_doc}
class CertificateArgs {
  /// The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  final pulumi.Input<String> certificateContent;
  /// The name of the IoTHub that this certificate will be attached to. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubName;
  /// Is the certificate verified? Defaults to `false`.
  final pulumi.Input<bool>? isVerified;
  /// Specifies the name of the IotHub Certificate resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the IotHub Certificate resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CertificateArgs].
  /// [certificateContent] The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  /// [iothubName] The name of the IoTHub that this certificate will be attached to. Changing this forces a new resource to be created.
  /// [isVerified] Is the certificate verified? Defaults to `false`.
  /// [name] Specifies the name of the IotHub Certificate resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IotHub Certificate resource has to be created. Changing this forces a new resource to be created.
  CertificateArgs({
    required this.certificateContent,
    required this.iothubName,
    this.isVerified,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateContent': certificateContent,
      'iothubName': iothubName,
      'isVerified': ?isVerified,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateContent: (map['certificateContent'] as String).input(),
      iothubName: (map['iothubName'] as String).input(),
      isVerified: map['isVerified'] == null ? null : (map['isVerified']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

