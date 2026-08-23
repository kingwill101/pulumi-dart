// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSupportedServiceSupportedMethod {
  /// A valid method name for the respective request mode. Must be a fully qualified name, for example, `storage.googleapis.com/BucketService.GetBucket`.
  final pulumi.Input<String> method;
  /// A valid Cloud IAM permission for the respective request mode, for example, `storage.buckets.get`.
  final pulumi.Input<String> permission;

  /// Creates a new [GetSupportedServiceSupportedMethod].
  /// [method] A valid method name for the respective request mode. Must be a fully qualified name, for example, `storage.googleapis.com/BucketService.GetBucket`.
  /// [permission] A valid Cloud IAM permission for the respective request mode, for example, `storage.buckets.get`.
  const GetSupportedServiceSupportedMethod({
    required this.method,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'permission': permission,
    };
  }

  factory GetSupportedServiceSupportedMethod.fromMap(Map<String, dynamic> map) {
    return GetSupportedServiceSupportedMethod(
      method: pulumi.Input.fromValue(map['method'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}
