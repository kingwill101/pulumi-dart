// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_service_account_args_doc}
/// The set of arguments for ServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_service_account_args_doc}
class ServiceAccountArgs {
  /// The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])` to comply with RFC1035.
  final pulumi.Input<String> accountId;
  /// Optional. A user-specified, human-readable description of the service account. The maximum length is 256 UTF-8 bytes.
  final pulumi.Input<String>? description;
  /// Optional. A user-specified, human-readable name for the service account. The maximum length is 100 UTF-8 bytes.
  final pulumi.Input<String>? displayName;
  /// Deprecated. Do not use.
  final pulumi.Input<String>? etag;
  /// The resource name of the service account. Use one of the following formats: * `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` * `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you can use the `-` wildcard character instead of the project ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}` * `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the `-` wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to access the service account `projects/-/serviceAccounts/fake@example.com`, which does not exist, the response contains an HTTP `403 Forbidden` error instead of a `404 Not Found` error.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [ServiceAccountArgs].
  /// [accountId] The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])` to comply with RFC1035.
  /// [description] Optional. A user-specified, human-readable description of the service account. The maximum length is 256 UTF-8 bytes.
  /// [displayName] Optional. A user-specified, human-readable name for the service account. The maximum length is 100 UTF-8 bytes.
  /// [etag] Deprecated. Do not use.
  /// [name] The resource name of the service account. Use one of the following formats: * `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` * `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you can use the `-` wildcard character instead of the project ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}` * `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the `-` wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to access the service account `projects/-/serviceAccounts/fake@example.com`, which does not exist, the response contains an HTTP `403 Forbidden` error instead of a `404 Not Found` error.
  /// [project] Optional.
  ServiceAccountArgs({
    required this.accountId,
    this.description,
    this.displayName,
    this.etag,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return ServiceAccountArgs(
      accountId: (map['accountId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

