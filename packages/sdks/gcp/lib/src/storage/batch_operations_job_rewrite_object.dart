// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchOperationsJobRewriteObject {
  /// valid kms key
  final pulumi.Input<String> kmsKey;

  /// Creates a new [BatchOperationsJobRewriteObject].
  /// [kmsKey] valid kms key
  const BatchOperationsJobRewriteObject({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
    };
  }

  factory BatchOperationsJobRewriteObject.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobRewriteObject(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}
