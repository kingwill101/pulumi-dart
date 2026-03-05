import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'secret_state.dart';

/// ## Import
///
/// #!/bin/bash
///
/// Docker secret cannot be imported as the secret data, once set, is never exposed again.
class Secret extends pulumi.CustomResource {
  /// Base64-url-safe-encoded secret data
  late final pulumi.Output<String> data;
  /// User-defined key/value metadata
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;
  /// User-defined name of the secret
  late final pulumi.Output<String> name;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_index_secret_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/secret:Secret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    data = registerOutput<String>('data');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Secret] resource's state with the given [name] and [id].
  static Secret get(
    String name,
    pulumi.Input<String> id, {
    SecretState? state,
  }) {
    return Secret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Secret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/secret:Secret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    data = registerOutput<String>('data');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    this.name = registerOutput<String>('name');
  }
}
