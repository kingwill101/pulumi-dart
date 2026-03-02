// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_book_draft_content_link_hash.dart';

class RunBookDraftContentLink {
  /// A `hash` block as defined below.
  final pulumi.Input<RunBookDraftContentLinkHash>? hash;
  /// The URI of the runbook content.
  final pulumi.Input<String> uri;
  /// Specifies the version of the content
  final pulumi.Input<String>? version;

  /// Creates a new [RunBookDraftContentLink].
  /// [hash] A `hash` block as defined below.
  /// [uri] The URI of the runbook content.
  /// [version] Specifies the version of the content
  RunBookDraftContentLink({
    this.hash,
    required this.uri,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': ?pulumi.Input.mapOptionalInputValue<RunBookDraftContentLinkHash, Map<String, dynamic>>(hash, (value) => value.toMap()),
      'uri': uri,
      'version': ?version,
    };
  }

  factory RunBookDraftContentLink.fromMap(Map<String, dynamic> map) {
    return RunBookDraftContentLink(
      hash: map['hash'] == null ? null : (RunBookDraftContentLinkHash.fromMap((map['hash']! as Map).cast<String, dynamic>())).input(),
      uri: (map['uri'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

