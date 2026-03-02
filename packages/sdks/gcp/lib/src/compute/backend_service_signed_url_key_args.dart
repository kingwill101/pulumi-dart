// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_backend_service_signed_url_key_backend_service_signed_url_key_args_doc}
/// The set of arguments for BackendServiceSignedUrlKey.
/// {@endtemplate}
/// {@macro pulumi_compute_backend_service_signed_url_key_backend_service_signed_url_key_args_doc}
class BackendServiceSignedUrlKeyArgs {
  /// The backend service this signed URL key belongs.
  final pulumi.Input<String> backendService;
  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> keyValue;
  /// Name of the signed URL key.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackendServiceSignedUrlKeyArgs].
  /// [backendService] The backend service this signed URL key belongs.
  /// [keyValue] 128-bit key value used for signing the URL. The key value must be a
  /// [name] Name of the signed URL key.
  /// [project] The ID of the project in which the resource belongs.
  BackendServiceSignedUrlKeyArgs({
    required this.backendService,
    required this.keyValue,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'keyValue': keyValue,
      'name': ?name,
      'project': ?project,
    };
  }

  factory BackendServiceSignedUrlKeyArgs.fromMap(Map<String, dynamic> map) {
    return BackendServiceSignedUrlKeyArgs(
      backendService: (map['backendService'] as String).input(),
      keyValue: (map['keyValue'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

