// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackendServiceSignedUrlKey resources.
class BackendServiceSignedUrlKeyState {
  /// The backend service this signed URL key belongs.
  final pulumi.Input<String>? backendService;
  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? keyValue;
  /// Name of the signed URL key.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackendServiceSignedUrlKeyState].
  /// [backendService] The backend service this signed URL key belongs.
  /// [keyValue] 128-bit key value used for signing the URL. The key value must be a
  /// [name] Name of the signed URL key.
  /// [project] The ID of the project in which the resource belongs.
  BackendServiceSignedUrlKeyState({
    this.backendService,
    this.keyValue,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': ?backendService,
      'keyValue': ?keyValue,
      'name': ?name,
      'project': ?project,
    };
  }

  factory BackendServiceSignedUrlKeyState.fromMap(Map<String, dynamic> map) {
    return BackendServiceSignedUrlKeyState(
      backendService: map['backendService'] == null ? null : (map['backendService']! as String).input(),
      keyValue: map['keyValue'] == null ? null : (map['keyValue']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

