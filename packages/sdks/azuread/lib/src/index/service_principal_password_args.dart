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
    this.displayName,
    this.endDate,
    this.endDateRelative,
    this.rotateWhenChanged,
    required this.servicePrincipalId,
    this.startDate,
  });

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
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDate: (() {
        final guardedValue = map['endDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDateRelative: (() {
        final guardedValue = map['endDateRelative'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rotateWhenChanged: (() {
        final guardedValue = map['rotateWhenChanged'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      servicePrincipalId: pulumi.Input.fromValue(
        map['servicePrincipalId'] as String,
      ),
      startDate: (() {
        final guardedValue = map['startDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
