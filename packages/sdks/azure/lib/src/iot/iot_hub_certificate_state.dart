// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IotHubCertificate resources.
class IotHubCertificateState {
  /// The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  final pulumi.Input<String>? certificateContent;
  /// The name of the IoT Device Provisioning Service that this certificate will be attached to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iotDpsName;
  /// Specifies if the certificate is created in verified state. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? isVerified;
  /// Specifies the name of the Iot Device Provisioning Service Certificate resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the Iot Device Provisioning Service Certificate resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IotHubCertificateState].
  /// [certificateContent] The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  /// [iotDpsName] The name of the IoT Device Provisioning Service that this certificate will be attached to. Changing this forces a new resource to be created.
  /// [isVerified] Specifies if the certificate is created in verified state. Defaults to `false`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Iot Device Provisioning Service Certificate resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the Iot Device Provisioning Service Certificate resource has to be created. Changing this forces a new resource to be created.
  IotHubCertificateState({
    pulumi.Output<String>? certificateContent,
    pulumi.Output<String>? iotDpsName,
    pulumi.Output<bool>? isVerified,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      certificateContent = pulumi.Input.asOptionalInput<String>(certificateContent),
      iotDpsName = pulumi.Input.asOptionalInput<String>(iotDpsName),
      isVerified = pulumi.Input.asOptionalInput<bool>(isVerified),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateContent': ?certificateContent,
      'iotDpsName': ?iotDpsName,
      'isVerified': ?isVerified,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IotHubCertificateState.fromMap(Map<String, dynamic> map) {
    return IotHubCertificateState(
      certificateContent: map['certificateContent'] == null ? null : pulumi.Output.create<String>(map['certificateContent'] as String),
      iotDpsName: map['iotDpsName'] == null ? null : pulumi.Output.create<String>(map['iotDpsName'] as String),
      isVerified: map['isVerified'] == null ? null : pulumi.Output.create<bool>(map['isVerified'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

