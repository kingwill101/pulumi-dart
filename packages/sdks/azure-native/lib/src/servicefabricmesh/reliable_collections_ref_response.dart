// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifying this parameter adds support for reliable collections
class ReliableCollectionsRefResponse {
  /// False (the default) if ReliableCollections state is persisted to disk as usual. True if you do not want to persist state, in which case replication is still enabled and you can use ReliableCollections as distributed cache.
  final pulumi.Input<bool>? doNotPersistState;
  /// Name of ReliableCollection resource. Right now it's not used and you can use any string.
  final pulumi.Input<String> name;

  /// Creates a new [ReliableCollectionsRefResponse].
  /// [doNotPersistState] False (the default) if ReliableCollections state is persisted to disk as usual. True if you do not want to persist state, in which case replication is still enabled and you can use ReliableCollections as distributed cache.
  /// [name] Name of ReliableCollection resource. Right now it's not used and you can use any string.
  ReliableCollectionsRefResponse({
    this.doNotPersistState,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doNotPersistState': ?doNotPersistState,
      'name': name,
    };
  }

  factory ReliableCollectionsRefResponse.fromMap(Map<String, dynamic> map) {
    return ReliableCollectionsRefResponse(
      doNotPersistState: map['doNotPersistState'] == null ? null : (map['doNotPersistState'] as bool).input(),
      name: (map['name'] as String).input(),
    );
  }
}

