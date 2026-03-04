// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_module_link_hash.dart';

class ModuleModuleLink {
  /// A `hash` block as defined below.
  final pulumi.Input<ModuleModuleLinkHash>? hash;

  /// The URI of the module content (zip or nupkg).
  final pulumi.Input<String> uri;

  /// Creates a new [ModuleModuleLink].
  /// [hash] A `hash` block as defined below.
  /// [uri] The URI of the module content (zip or nupkg).
  ModuleModuleLink({this.hash, required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash':
          ?pulumi.Input.mapOptionalInputValue<
            ModuleModuleLinkHash,
            Map<String, dynamic>
          >(hash, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory ModuleModuleLink.fromMap(Map<String, dynamic> map) {
    return ModuleModuleLink(
      hash: (() {
        final guardedValue = map['hash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ModuleModuleLinkHash.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
