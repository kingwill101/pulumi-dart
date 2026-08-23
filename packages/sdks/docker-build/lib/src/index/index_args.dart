// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry.dart';

/// {@template pulumi_index_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_index_index_args_doc}
class IndexArgs {
  /// If true, push the index to the target registry.
  ///
  /// Defaults to `true`.
  final pulumi.Input<bool>? push;
  /// Authentication for the registry where the tagged index will be pushed.
  ///
  /// Credentials can also be included with the provider's configuration.
  final pulumi.Input<Registry>? registry;
  /// Existing images to include in the index.
  final pulumi.Input<List<String>> sources;
  /// The tag to apply to the index.
  final pulumi.Input<String> tag;

  /// Creates a new [IndexArgs].
  /// [push] If true, push the index to the target registry.
  /// [registry] Authentication for the registry where the tagged index will be pushed.
  /// [sources] Existing images to include in the index.
  /// [tag] The tag to apply to the index.
  const IndexArgs({
    this.push,
    this.registry,
    required this.sources,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'push': ?push,
      'registry': ?pulumi.Input.mapOptionalInputValue<Registry, Map<String, dynamic>>(registry, (value) => value.toMap()),
      'sources': sources,
      'tag': tag,
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      push: (() { final guardedValue = map['push']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registry: (() { final guardedValue = map['registry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Registry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sources: pulumi.Input.fromValue((map['sources'] as List).cast<String>()),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
