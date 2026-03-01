// ignore_for_file: unused_element, unnecessary_cast

import 'powershell72_module_module_link_hash.dart';

class Powershell72ModuleModuleLink {
  /// A `hash` block as defined below.
  final Powershell72ModuleModuleLinkHash? hash;
  /// The URI of the module content (zip or nupkg).
  final String uri;

  /// Creates a new [Powershell72ModuleModuleLink].
  /// [hash] A `hash` block as defined below.
  /// [uri] The URI of the module content (zip or nupkg).
  Powershell72ModuleModuleLink({
    this.hash,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': ?hash == null ? null : hash!.toMap(),
      'uri': uri,
    };
  }

  factory Powershell72ModuleModuleLink.fromMap(Map<String, dynamic> map) {
    return Powershell72ModuleModuleLink(
      hash: map['hash'] == null ? null : Powershell72ModuleModuleLinkHash.fromMap((map['hash'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}

