// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DpsSharedAccessPolicy resources.
class DpsSharedAccessPolicyState {
  /// Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data.
  ///
  /// &gt; **Note:** When `enrollment_read` is set to `true`, `registration_read` must also be set to true. This is a limitation of the Azure REST API
  final pulumi.Input<bool>? enrollmentRead;
  /// Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data.
  ///
  /// &gt; **Note:** When `registration_write` is set to `true`, `enrollment_read`, `registration_read`, and `registration_write` must also be set to true. This is a requirement of the Azure API.
  final pulumi.Input<bool>? enrollmentWrite;
  /// The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubDpsName;
  /// Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The primary connection string of the Shared Access Policy.
  final pulumi.Input<String>? primaryConnectionString;
  /// The primary key used to create the authentication token.
  final pulumi.Input<String>? primaryKey;
  /// Adds `RegistrationStatusRead` permission to this Shared Access Account. It allows read access to device registrations.
  final pulumi.Input<bool>? registrationRead;
  /// Adds `RegistrationStatusWrite` permission to this Shared Access Account. It allows write access to device registrations.
  ///
  /// &gt; **Note:** When `registration_write` is set to `true`, `registration_read` must also be set to true. This is a requirement of the Azure API.
  final pulumi.Input<bool>? registrationWrite;
  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary connection string of the Shared Access Policy.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The secondary key used to create the authentication token.
  final pulumi.Input<String>? secondaryKey;
  /// Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
  ///
  /// &gt; **Note:** At least one of `registration_read`, `registration_write`, `service_config`, `enrollment_read`, `enrollment_write` permissions must be set to `true`.
  final pulumi.Input<bool>? serviceConfig;

  /// Creates a new [DpsSharedAccessPolicyState].
  /// [enrollmentRead] Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data.
  /// [enrollmentWrite] Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data.
  /// [iothubDpsName] The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  /// [primaryConnectionString] The primary connection string of the Shared Access Policy.
  /// [primaryKey] The primary key used to create the authentication token.
  /// [registrationRead] Adds `RegistrationStatusRead` permission to this Shared Access Account. It allows read access to device registrations.
  /// [registrationWrite] Adds `RegistrationStatusWrite` permission to this Shared Access Account. It allows write access to device registrations.
  /// [resourceGroupName] The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  /// [secondaryConnectionString] The secondary connection string of the Shared Access Policy.
  /// [secondaryKey] The secondary key used to create the authentication token.
  /// [serviceConfig] Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
  const DpsSharedAccessPolicyState({
    this.enrollmentRead,
    this.enrollmentWrite,
    this.iothubDpsName,
    this.name,
    this.primaryConnectionString,
    this.primaryKey,
    this.registrationRead,
    this.registrationWrite,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryKey,
    this.serviceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enrollmentRead': ?enrollmentRead,
      'enrollmentWrite': ?enrollmentWrite,
      'iothubDpsName': ?iothubDpsName,
      'name': ?name,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'registrationRead': ?registrationRead,
      'registrationWrite': ?registrationWrite,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
      'serviceConfig': ?serviceConfig,
    };
  }

  factory DpsSharedAccessPolicyState.fromMap(Map<String, dynamic> map) {
    return DpsSharedAccessPolicyState(
      enrollmentRead: (() { final guardedValue = map['enrollmentRead']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enrollmentWrite: (() { final guardedValue = map['enrollmentWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iothubDpsName: (() { final guardedValue = map['iothubDpsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationRead: (() { final guardedValue = map['registrationRead']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrationWrite: (() { final guardedValue = map['registrationWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConfig: (() { final guardedValue = map['serviceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

