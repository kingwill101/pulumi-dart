// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_resource_library_category_get_zero_trust_resource_library_category_args_doc}
/// Arguments for getZeroTrustResourceLibraryCategory.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_resource_library_category_get_zero_trust_resource_library_category_args_doc}
class GetZeroTrustResourceLibraryCategoryArgs {
  final pulumi.Input<String> accountId;
  /// The ID of this resource.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustResourceLibraryCategoryArgs].
  /// [accountId] Required.
  /// [id] The ID of this resource.
  const GetZeroTrustResourceLibraryCategoryArgs({
    required this.accountId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'id': id,
    };
  }

  factory GetZeroTrustResourceLibraryCategoryArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryCategoryArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
