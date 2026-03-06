// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InternalRangeMigration {
  /// Resource path as an URI of the source resource, for example a subnet.
  /// The project for the source resource should match the project for the
  /// InternalRange.
  /// An example /projects/{project}/regions/{region}/subnetworks/{subnet}
  final pulumi.Input<String> source;
  /// Resource path of the target resource. The target project can be
  /// different, as in the cases when migrating to peer networks. The resource
  /// may not exist yet.
  /// For example /projects/{project}/regions/{region}/subnetworks/{subnet}
  final pulumi.Input<String> target;

  /// Creates a new [InternalRangeMigration].
  /// [source] Resource path as an URI of the source resource, for example a subnet.
  /// [target] Resource path of the target resource. The target project can be
  const InternalRangeMigration({
    required this.source,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
      'target': target,
    };
  }

  factory InternalRangeMigration.fromMap(Map<String, dynamic> map) {
    return InternalRangeMigration(
      source: pulumi.Input.fromValue(map['source'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

