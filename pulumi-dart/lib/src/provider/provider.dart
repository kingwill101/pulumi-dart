import '../input.dart';
import '../resource/component_resource.dart';

/// A single property validation failure.
class CheckFailure {
  const CheckFailure({required this.property, required this.reason});

  final String property;
  final String reason;
}

/// Result returned from [Provider.check].
class CheckResult {
  const CheckResult({this.inputs, this.failures = const <CheckFailure>[]});

  final Map<String, dynamic>? inputs;
  final List<CheckFailure> failures;
}

/// Result returned from [Provider.diff].
class DiffResult {
  const DiffResult({
    this.changes,
    this.replaces,
    this.stables,
    this.deleteBeforeReplace,
  });

  final bool? changes;
  final List<String>? replaces;
  final List<String>? stables;
  final bool? deleteBeforeReplace;
}

/// Result returned from [Provider.create].
class CreateResult {
  const CreateResult({required this.id, this.outs});

  final String id;
  final Map<String, dynamic>? outs;
}

/// Result returned from [Provider.read].
class ReadResult {
  const ReadResult({this.id, this.props, this.inputs});

  final String? id;
  final Map<String, dynamic>? props;
  final Map<String, dynamic>? inputs;
}

/// Result returned from [Provider.update].
class UpdateResult {
  const UpdateResult({this.outs});

  final Map<String, dynamic>? outs;
}

/// Result returned from [Provider.construct].
class ConstructResult {
  const ConstructResult({required this.urn, required this.state});

  final Input<String> urn;
  final Inputs state;
}

/// Result returned from [Provider.call].
class CallResult {
  const CallResult({required this.outputs, this.failures});

  final Inputs outputs;
  final List<CheckFailure>? failures;
}

/// Result returned from [Provider.invoke].
class InvokeResult {
  const InvokeResult({required this.outputs, this.failures});

  final Map<String, dynamic> outputs;
  final List<CheckFailure>? failures;
}

/// Result returned from provider parameterization.
class ParameterizeResult {
  const ParameterizeResult({required this.name, required this.version});

  final String name;
  final String version;
}

/// Base provider contract for custom provider authoring.
abstract class Provider {
  const Provider({this.version, this.schema});

  final String? version;
  final String? schema;

  /// Returns the provider package schema JSON.
  Future<String> getSchema() async => schema ?? '{}';

  /// Validates resource inputs.
  Future<CheckResult> check(
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    return CheckResult(inputs: news);
  }

  /// Computes the impact of an update.
  Future<DiffResult> diff(
    String id,
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    return const DiffResult();
  }

  /// Creates a new custom resource instance.
  Future<CreateResult> create(String urn, Map<String, dynamic> inputs);

  /// Reads the current state of a resource.
  Future<ReadResult> read(
    String id,
    String urn,
    Map<String, dynamic>? props,
  ) async {
    return ReadResult(id: id, props: props);
  }

  /// Updates an existing custom resource.
  Future<UpdateResult> update(
    String id,
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    return const UpdateResult();
  }

  /// Deletes a custom resource.
  Future<void> delete(
    String id,
    String urn,
    Map<String, dynamic> props,
  ) async {}

  /// Constructs a component resource exposed by this provider.
  Future<ConstructResult> construct(
    String name,
    String type,
    Inputs inputs,
    ComponentResourceOptions options,
  ) async {
    throw Exception('unknown resource type $type');
  }

  /// Calls a provider method tied to component resources.
  Future<CallResult> call(String token, Inputs inputs) async {
    throw Exception('unknown method $token');
  }

  /// Calls an invoke token exposed by the provider.
  Future<InvokeResult> invoke(String token, Map<String, dynamic> args) async {
    throw Exception('unknown function $token');
  }

  /// Parameterizes the provider with CLI-style arguments.
  Future<ParameterizeResult> parameterizeArgs(List<String> args) async {
    throw Exception('parameterizeArgs not implemented');
  }

  /// Parameterizes the provider with embedded parameter payloads.
  Future<ParameterizeResult> parameterizeValue(
    String name,
    String version,
    String value,
  ) async {
    throw Exception('parameterizeValue not implemented');
  }
}

/// Thrown when a single input property is invalid.
class InputPropertyError implements Exception {
  const InputPropertyError(this.propertyPath, this.reason);

  final String propertyPath;
  final String reason;

  @override
  String toString() => reason;
}

/// Structured detail for [InputPropertiesError].
class InputPropertyErrorDetails {
  const InputPropertyErrorDetails({
    required this.propertyPath,
    required this.reason,
  });

  final String propertyPath;
  final String reason;
}

/// Thrown when multiple input properties are invalid.
class InputPropertiesError implements Exception {
  const InputPropertiesError(this.message, this.errors);

  final String message;
  final List<InputPropertyErrorDetails> errors;

  @override
  String toString() => message;
}

/// Wraps initialization errors raised by component constructors.
class ComponentInitError implements Exception {
  const ComponentInitError(this.inner);

  final Object inner;

  @override
  String toString() => inner.toString();
}
