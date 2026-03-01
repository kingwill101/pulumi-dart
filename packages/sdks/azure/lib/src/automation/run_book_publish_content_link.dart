// ignore_for_file: unused_element, unnecessary_cast

import 'run_book_publish_content_link_hash.dart';

class RunBookPublishContentLink {
  /// A `hash` block as defined below.
  final RunBookPublishContentLinkHash? hash;
  /// The URI of the runbook content.
  final String uri;
  /// Specifies the version of the content
  final String? version;

  /// Creates a new [RunBookPublishContentLink].
  /// [hash] A `hash` block as defined below.
  /// [uri] The URI of the runbook content.
  /// [version] Specifies the version of the content
  RunBookPublishContentLink({
    this.hash,
    required this.uri,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': ?hash == null ? null : hash!.toMap(),
      'uri': uri,
      'version': ?version,
    };
  }

  factory RunBookPublishContentLink.fromMap(Map<String, dynamic> map) {
    return RunBookPublishContentLink(
      hash: map['hash'] == null ? null : RunBookPublishContentLinkHash.fromMap((map['hash'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

