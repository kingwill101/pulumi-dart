// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SchemaBundleProtoSchema {
  /// Base64 encoded content of the file.
  final pulumi.Input<String> protoDescriptors;

  /// Creates a new [SchemaBundleProtoSchema].
  /// [protoDescriptors] Base64 encoded content of the file.
  SchemaBundleProtoSchema({
    required this.protoDescriptors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protoDescriptors': protoDescriptors,
    };
  }

  factory SchemaBundleProtoSchema.fromMap(Map<String, dynamic> map) {
    return SchemaBundleProtoSchema(
      protoDescriptors: (map['protoDescriptors'] as String).input(),
    );
  }
}

