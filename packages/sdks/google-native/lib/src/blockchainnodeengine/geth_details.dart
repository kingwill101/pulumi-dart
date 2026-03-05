// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geth_details_garbage_collection_mode.dart';

/// Options for the Geth execution client. See [Command-line Options](https://geth.ethereum.org/docs/fundamentals/command-line-options) for more details.
class GethDetails {
  /// Immutable. Blockchain garbage collection mode.
  final pulumi.Input<GethDetailsGarbageCollectionMode>? garbageCollectionMode;

  /// Creates a new [GethDetails].
  /// [garbageCollectionMode] Immutable. Blockchain garbage collection mode.
  GethDetails({
    this.garbageCollectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'garbageCollectionMode': ?pulumi.Input.mapOptionalInputValue<GethDetailsGarbageCollectionMode, String>(garbageCollectionMode, (value) => value.wireValue),
    };
  }

  factory GethDetails.fromMap(Map<String, dynamic> map) {
    return GethDetails(
      garbageCollectionMode: (() { final guardedValue = map['garbageCollectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GethDetailsGarbageCollectionMode.fromValue(guardedValue as String)); })(),
    );
  }
}

