// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'powershell72_module_module_link_hash.dart';

class Powershell72ModuleModuleLink {
  /// A `hash` block as defined below.
  final pulumi.Input<Powershell72ModuleModuleLinkHash>? hash;
  /// The URI of the module content (zip or nupkg).
  final pulumi.Input<String> uri;

  /// Creates a new [Powershell72ModuleModuleLink].
  /// [hash] A `hash` block as defined below.
  /// [uri] The URI of the module content (zip or nupkg).
  Powershell72ModuleModuleLink({
    this.hash,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': ?pulumi.Input.mapOptionalInputValue<Powershell72ModuleModuleLinkHash, Map<String, dynamic>>(hash, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory Powershell72ModuleModuleLink.fromMap(Map<String, dynamic> map) {
    return Powershell72ModuleModuleLink(
      hash: map['hash'] == null ? null : (Powershell72ModuleModuleLinkHash.fromMap((map['hash'] as Map).cast<String, dynamic>())).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

