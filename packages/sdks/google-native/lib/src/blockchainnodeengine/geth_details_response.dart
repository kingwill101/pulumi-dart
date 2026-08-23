// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for the Geth execution client. See [Command-line Options](https://geth.ethereum.org/docs/fundamentals/command-line-options) for more details.
class GethDetailsResponse {
  /// Immutable. Blockchain garbage collection mode.
  final pulumi.Input<String> garbageCollectionMode;

  /// Creates a new [GethDetailsResponse].
  /// [garbageCollectionMode] Immutable. Blockchain garbage collection mode.
  const GethDetailsResponse({
    required this.garbageCollectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'garbageCollectionMode': garbageCollectionMode,
    };
  }

  factory GethDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GethDetailsResponse(
      garbageCollectionMode: pulumi.Input.fromValue(map['garbageCollectionMode'] as String),
    );
  }
}
