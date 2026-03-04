// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_dps_shared_access_policy_dps_shared_access_policy_args_doc}
/// The set of arguments for DpsSharedAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_iot_dps_shared_access_policy_dps_shared_access_policy_args_doc}
class DpsSharedAccessPolicyArgs {
  /// Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data.
  ///
  /// &gt; **Note:** When `enrollment_read` is set to `true`, `registration_read` must also be set to true. This is a limitation of the Azure REST API
  final pulumi.Input<bool>? enrollmentRead;

  /// Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data.
  ///
  /// &gt; **Note:** When `registration_write` is set to `true`, `enrollment_read`, `registration_read`, and `registration_write` must also be set to true. This is a requirement of the Azure API.
  final pulumi.Input<bool>? enrollmentWrite;

  /// The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubDpsName;

  /// Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Adds `RegistrationStatusRead` permission to this Shared Access Account. It allows read access to device registrations.
  final pulumi.Input<bool>? registrationRead;

  /// Adds `RegistrationStatusWrite` permission to this Shared Access Account. It allows write access to device registrations.
  ///
  /// &gt; **Note:** When `registration_write` is set to `true`, `registration_read` must also be set to true. This is a requirement of the Azure API.
  final pulumi.Input<bool>? registrationWrite;

  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
  ///
  /// &gt; **Note:** At least one of `registration_read`, `registration_write`, `service_config`, `enrollment_read`, `enrollment_write` permissions must be set to `true`.
  final pulumi.Input<bool>? serviceConfig;

  /// Creates a new [DpsSharedAccessPolicyArgs].
  /// [enrollmentRead] Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data.
  /// [enrollmentWrite] Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data.
  /// [iothubDpsName] The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  /// [registrationRead] Adds `RegistrationStatusRead` permission to this Shared Access Account. It allows read access to device registrations.
  /// [registrationWrite] Adds `RegistrationStatusWrite` permission to this Shared Access Account. It allows write access to device registrations.
  /// [resourceGroupName] The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  /// [serviceConfig] Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
  DpsSharedAccessPolicyArgs({
    this.enrollmentRead,
    this.enrollmentWrite,
    required this.iothubDpsName,
    this.name,
    this.registrationRead,
    this.registrationWrite,
    required this.resourceGroupName,
    this.serviceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enrollmentRead': ?enrollmentRead,
      'enrollmentWrite': ?enrollmentWrite,
      'iothubDpsName': iothubDpsName,
      'name': ?name,
      'registrationRead': ?registrationRead,
      'registrationWrite': ?registrationWrite,
      'resourceGroupName': resourceGroupName,
      'serviceConfig': ?serviceConfig,
    };
  }

  factory DpsSharedAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DpsSharedAccessPolicyArgs(
      enrollmentRead: (() {
        final guardedValue = map['enrollmentRead'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enrollmentWrite: (() {
        final guardedValue = map['enrollmentWrite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      iothubDpsName: pulumi.Input.fromValue(map['iothubDpsName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registrationRead: (() {
        final guardedValue = map['registrationRead'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      registrationWrite: (() {
        final guardedValue = map['registrationWrite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceConfig: (() {
        final guardedValue = map['serviceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
