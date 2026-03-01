// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_service_principal_password_service_principal_password_args_doc}
/// The set of arguments for ServicePrincipalPassword.
/// {@endtemplate}
/// {@macro pulumi_index_service_principal_password_service_principal_password_args_doc}
class ServicePrincipalPasswordArgs {
  /// A display name for the password.
  final pulumi.Input<String>? displayName;
  /// The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  final pulumi.Input<String>? endDate;
  /// A relative duration for which the password is valid until, for example `240h` (10 days) or `2400h30m`. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? endDateRelative;
  /// A map of arbitrary key/value pairs that will force recreation of the password when they change, enabling password rotation based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? rotateWhenChanged;
  /// The ID of the service principal for which this password should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String> servicePrincipalId;
  /// The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used.  Changing this field forces a new resource to be created.
  final pulumi.Input<String>? startDate;

  /// Creates a new [ServicePrincipalPasswordArgs].
  /// [displayName] A display name for the password.
  /// [endDate] The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  /// [endDateRelative] A relative duration for which the password is valid until, for example `240h` (10 days) or `2400h30m`. Changing this field forces a new resource to be created.
  /// [rotateWhenChanged] A map of arbitrary key/value pairs that will force recreation of the password when they change, enabling password rotation based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created.
  /// [servicePrincipalId] The ID of the service principal for which this password should be created. Changing this field forces a new resource to be created.
  /// [startDate] The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used.  Changing this field forces a new resource to be created.
  ServicePrincipalPasswordArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? endDateRelative,
    pulumi.Output<Map<String, String>>? rotateWhenChanged,
    required pulumi.Output<String> servicePrincipalId,
    pulumi.Output<String>? startDate,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      endDateRelative = pulumi.Input.asOptionalInput<String>(endDateRelative),
      rotateWhenChanged = pulumi.Input.asOptionalInput<Map<String, String>>(rotateWhenChanged),
      servicePrincipalId = pulumi.Input.asInput<String>(servicePrincipalId),
      startDate = pulumi.Input.asOptionalInput<String>(startDate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'endDate': ?endDate,
      'endDateRelative': ?endDateRelative,
      'rotateWhenChanged': ?rotateWhenChanged,
      'servicePrincipalId': servicePrincipalId,
      'startDate': ?startDate,
    };
  }

  factory ServicePrincipalPasswordArgs.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalPasswordArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      endDateRelative: map['endDateRelative'] == null ? null : pulumi.Output.create<String>(map['endDateRelative'] as String),
      rotateWhenChanged: map['rotateWhenChanged'] == null ? null : pulumi.Output.create<Map<String, String>>((map['rotateWhenChanged'] as Map).cast<String, String>()),
      servicePrincipalId: pulumi.Output.create<String>(map['servicePrincipalId'] as String),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
    );
  }
}

