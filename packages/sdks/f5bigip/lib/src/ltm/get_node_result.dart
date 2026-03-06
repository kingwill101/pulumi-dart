// ignore_for_file: unused_element, unnecessary_cast

import 'get_node_fqdn.dart';

/// Result data returned by getNode.
class GetNodeResult {
  /// The address of the node.
  final String? address;
  /// Node connection limit.
  final int connectionLimit;
  /// User defined description of the node.
  final String? description;
  /// The dynamic ratio number for the node.
  final int dynamicRatio;
  final GetNodeFqdn fqdn;
  /// Full path of the node (partition and name)
  final String? fullPath;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Specifies the health monitors the system currently uses to monitor this node.
  final String monitor;
  final String name;
  final String partition;
  /// Node rate limit.
  final String rateLimit;
  /// Node ratio weight.
  final int ratio;
  final String session;
  /// The current state of the node.
  final String state;

  /// Creates a new [GetNodeResult].
  /// [address] The address of the node.
  /// [connectionLimit] Node connection limit.
  /// [description] User defined description of the node.
  /// [dynamicRatio] The dynamic ratio number for the node.
  /// [fqdn] Required.
  /// [fullPath] Full path of the node (partition and name)
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [monitor] Specifies the health monitors the system currently uses to monitor this node.
  /// [name] Required.
  /// [partition] Required.
  /// [rateLimit] Node rate limit.
  /// [ratio] Node ratio weight.
  /// [session] Required.
  /// [state] The current state of the node.
  const GetNodeResult({
    this.address,
    required this.connectionLimit,
    this.description,
    required this.dynamicRatio,
    required this.fqdn,
    this.fullPath,
    required this.id,
    required this.monitor,
    required this.name,
    required this.partition,
    required this.rateLimit,
    required this.ratio,
    required this.session,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'connectionLimit': connectionLimit,
      'description': ?description,
      'dynamicRatio': dynamicRatio,
      'fqdn': fqdn.toMap(),
      'fullPath': ?fullPath,
      'id': id,
      'monitor': monitor,
      'name': name,
      'partition': partition,
      'rateLimit': rateLimit,
      'ratio': ratio,
      'session': session,
      'state': state,
    };
  }

  factory GetNodeResult.fromMap(Map<String, dynamic> map) {
    return GetNodeResult(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionLimit: map['connectionLimit'] as int,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicRatio: map['dynamicRatio'] as int,
      fqdn: GetNodeFqdn.fromMap((map['fqdn']! as Map).cast<String, dynamic>()),
      fullPath: (() { final guardedValue = map['fullPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      monitor: map['monitor'] as String,
      name: map['name'] as String,
      partition: map['partition'] as String,
      rateLimit: map['rateLimit'] as String,
      ratio: map['ratio'] as int,
      session: map['session'] as String,
      state: map['state'] as String,
    );
  }
}

