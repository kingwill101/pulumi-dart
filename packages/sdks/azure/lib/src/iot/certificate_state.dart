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
  CertificateState({
    pulumi.Output<String>? certificateContent,
    pulumi.Output<String>? iothubName,
    pulumi.Output<bool>? isVerified,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      certificateContent = pulumi.Input.asOptionalInput<String>(certificateContent),
      iothubName = pulumi.Input.asOptionalInput<String>(iothubName),
      isVerified = pulumi.Input.asOptionalInput<bool>(isVerified),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      certificateContent: map['certificateContent'] == null ? null : pulumi.Output.create<String>(map['certificateContent'] as String),
      iothubName: map['iothubName'] == null ? null : pulumi.Output.create<String>(map['iothubName'] as String),
      isVerified: map['isVerified'] == null ? null : pulumi.Output.create<bool>(map['isVerified'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

