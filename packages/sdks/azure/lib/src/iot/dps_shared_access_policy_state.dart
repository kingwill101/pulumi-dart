// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DpsSharedAccessPolicy resources.
class DpsSharedAccessPolicyState {
  /// Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data.
  ///
  /// > **Note:** When `enrollment_read` is set to `true`, `registration_read` must also be set to true. This is a limitation of the Azure REST API
  final pulumi.Input<bool>? enrollmentRead;
  /// Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data.
  ///
  /// > **Note:** When `registration_write` is set to `true`, `enrollment_read`, `registration_read`, and `registration_write` must also be set to true. This is a requirement of the Azure API.
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
  /// > **Note:** When `registration_write` is set to `true`, `registration_read` must also be set to true. This is a requirement of the Azure API.
  final pulumi.Input<bool>? registrationWrite;
  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary connection string of the Shared Access Policy.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The secondary key used to create the authentication token.
  final pulumi.Input<String>? secondaryKey;
  /// Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
  ///
  /// > **Note:** At least one of `registration_read`, `registration_write`, `service_config`, `enrollment_read`, `enrollment_write` permissions must be set to `true`.
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
  DpsSharedAccessPolicyState({
    pulumi.Output<bool>? enrollmentRead,
    pulumi.Output<bool>? enrollmentWrite,
    pulumi.Output<String>? iothubDpsName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<bool>? registrationRead,
    pulumi.Output<bool>? registrationWrite,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<bool>? serviceConfig,
  }) :
      enrollmentRead = pulumi.Input.asOptionalInput<bool>(enrollmentRead),
      enrollmentWrite = pulumi.Input.asOptionalInput<bool>(enrollmentWrite),
      iothubDpsName = pulumi.Input.asOptionalInput<String>(iothubDpsName),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      registrationRead = pulumi.Input.asOptionalInput<bool>(registrationRead),
      registrationWrite = pulumi.Input.asOptionalInput<bool>(registrationWrite),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      serviceConfig = pulumi.Input.asOptionalInput<bool>(serviceConfig);

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
      enrollmentRead: map['enrollmentRead'] == null ? null : pulumi.Output.create<bool>(map['enrollmentRead'] as bool),
      enrollmentWrite: map['enrollmentWrite'] == null ? null : pulumi.Output.create<bool>(map['enrollmentWrite'] as bool),
      iothubDpsName: map['iothubDpsName'] == null ? null : pulumi.Output.create<String>(map['iothubDpsName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      registrationRead: map['registrationRead'] == null ? null : pulumi.Output.create<bool>(map['registrationRead'] as bool),
      registrationWrite: map['registrationWrite'] == null ? null : pulumi.Output.create<bool>(map['registrationWrite'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      serviceConfig: map['serviceConfig'] == null ? null : pulumi.Output.create<bool>(map['serviceConfig'] as bool),
    );
  }
}

