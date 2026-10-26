// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';

/// Result data returned by getDeveloper.
class GetDeveloperResult {
  /// Access type.
  final String? accessType;
  /// Developer app family.
  final String? appFamily;
  /// List of apps associated with the developer.
  final List<String>? apps;
  /// Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  final List<GoogleCloudApigeeV1AttributeResponse>? attributes;
  /// List of companies associated with the developer.
  final List<String>? companies;
  /// Time at which the developer was created in milliseconds since epoch.
  final String? createdAt;
  /// ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  final String? developerId;
  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  final String? email;
  /// First name of the developer.
  final String? firstName;
  /// Time at which the developer was last modified in milliseconds since epoch.
  final String? lastModifiedAt;
  /// Last name of the developer.
  final String? lastName;
  /// Name of the Apigee organization in which the developer resides.
  final String? organizationName;
  /// Status of the developer. Valid values are `active` and `inactive`.
  final String? status;
  /// User name of the developer. Not used by Apigee hybrid.
  final String? userName;

  /// Creates a new [GetDeveloperResult].
  /// [accessType] Access type.
  /// [appFamily] Developer app family.
  /// [apps] List of apps associated with the developer.
  /// [attributes] Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [companies] List of companies associated with the developer.
  /// [createdAt] Time at which the developer was created in milliseconds since epoch.
  /// [developerId] ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  /// [email] Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  /// [firstName] First name of the developer.
  /// [lastModifiedAt] Time at which the developer was last modified in milliseconds since epoch.
  /// [lastName] Last name of the developer.
  /// [organizationName] Name of the Apigee organization in which the developer resides.
  /// [status] Status of the developer. Valid values are `active` and `inactive`.
  /// [userName] User name of the developer. Not used by Apigee hybrid.
  const GetDeveloperResult({
    this.accessType,
    this.appFamily,
    this.apps,
    this.attributes,
    this.companies,
    this.createdAt,
    this.developerId,
    this.email,
    this.firstName,
    this.lastModifiedAt,
    this.lastName,
    this.organizationName,
    this.status,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'appFamily': ?appFamily,
      'apps': ?apps,
      'attributes': ?(() { final guardedValue = attributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'companies': ?companies,
      'createdAt': ?createdAt,
      'developerId': ?developerId,
      'email': ?email,
      'firstName': ?firstName,
      'lastModifiedAt': ?lastModifiedAt,
      'lastName': ?lastName,
      'organizationName': ?organizationName,
      'status': ?status,
      'userName': ?userName,
    };
  }

  factory GetDeveloperResult.fromMap(Map<String, dynamic> map) {
    return GetDeveloperResult(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appFamily: (() { final guardedValue = map['appFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      apps: (() { final guardedValue = map['apps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(guardedValue, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      companies: (() { final guardedValue = map['companies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      developerId: (() { final guardedValue = map['developerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationName: (() { final guardedValue = map['organizationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
