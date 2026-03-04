// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// {@template pulumi_apigee_v1_developer_args_doc}
/// The set of arguments for Developer.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_developer_args_doc}
class DeveloperArgs {
  /// Access type.
  final pulumi.Input<String>? accessType;

  /// Developer app family.
  final pulumi.Input<String>? appFamily;

  /// List of apps associated with the developer.
  final pulumi.Input<List<String>>? apps;

  /// Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// List of companies associated with the developer.
  final pulumi.Input<List<String>>? companies;

  /// ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  final pulumi.Input<String>? developerId;

  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  final pulumi.Input<String> email;

  /// First name of the developer.
  final pulumi.Input<String> firstName;

  /// Last name of the developer.
  final pulumi.Input<String> lastName;
  final pulumi.Input<String> organizationId;

  /// User name of the developer. Not used by Apigee hybrid.
  final pulumi.Input<String> userName;

  /// Creates a new [DeveloperArgs].
  /// [accessType] Access type.
  /// [appFamily] Developer app family.
  /// [apps] List of apps associated with the developer.
  /// [attributes] Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [companies] List of companies associated with the developer.
  /// [developerId] ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  /// [email] Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  /// [firstName] First name of the developer.
  /// [lastName] Last name of the developer.
  /// [organizationId] Required.
  /// [userName] User name of the developer. Not used by Apigee hybrid.
  DeveloperArgs({
    this.accessType,
    this.appFamily,
    this.apps,
    this.attributes,
    this.companies,
    this.developerId,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.organizationId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'appFamily': ?appFamily,
      'apps': ?apps,
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudApigeeV1Attribute>,
            List<Map<String, dynamic>>
          >(
            attributes,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1Attribute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'companies': ?companies,
      'developerId': ?developerId,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'organizationId': organizationId,
      'userName': userName,
    };
  }

  factory DeveloperArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperArgs(
      accessType: (() {
        final guardedValue = map['accessType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appFamily: (() {
        final guardedValue = map['appFamily'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apps: (() {
        final guardedValue = map['apps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(
            guardedValue,
            (value) => GoogleCloudApigeeV1Attribute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      companies: (() {
        final guardedValue = map['companies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      developerId: (() {
        final guardedValue = map['developerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: pulumi.Input.fromValue(map['email'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
