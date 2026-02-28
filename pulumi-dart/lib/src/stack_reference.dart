import 'input.dart';
import 'output.dart';
import 'resource/custom_resource.dart';
import 'resource/resource.dart';

/// {@template pulumi.stack_reference_args.summary}
/// Constructor arguments for [StackReference].
/// {@endtemplate}
///
class StackReferenceArgs {
  final Input<String>? name;

  const StackReferenceArgs({this.name});
}

/// {@template pulumi.stack_reference_output_details.summary}
/// Output details for a referenced stack output.
///
/// Exactly one of [value] or [secretValue] is set when present.
/// {@endtemplate}
///
class StackReferenceOutputDetails {
  final dynamic value;
  final dynamic secretValue;

  const StackReferenceOutputDetails({this.value, this.secretValue});
}

/// {@template pulumi.stack_reference.summary}
/// A resource handle to outputs from another Pulumi stack.
///
/// This is modeled as `pulumi:pulumi:StackReference` and supports both
/// optional/required lookups as plain values or outputs.
///
/// ## Example
/// ```dart
/// final ref = StackReference('org/network/dev');
/// final vpcId = ref.requireOutput(Input.fromValue('vpcId'));
/// ```
/// {@endtemplate}
///
class StackReference extends CustomResource {
  /// The name of the referenced stack.
  late final Output<String> name;

  /// The outputs of the referenced stack.
  late final Output<Map<String, dynamic>> outputs;

  /// The names of stack outputs that contain secrets.
  late final Output<List<String>?> secretOutputNames;

  StackReference(
    String name, {
    StackReferenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
         'pulumi:pulumi:StackReference',
         name,
         _mapArgs(name, args),
         options ?? CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    outputs = registerOutput<Map<String, dynamic>>('outputs');
    secretOutputNames = registerOutput<List<String>?>('secretOutputNames');
  }

  /// Returns an optional output from the referenced stack.
  ///
  /// Result is unknown during preview when referenced outputs are unknown.
  Output<dynamic> getOutput(Input<String> outputName) {
    return Output<dynamic>(_readOutput(outputName, required: false));
  }

  /// Returns a required output from the referenced stack.
  ///
  /// Throws if the output does not exist once known.
  Output<dynamic> requireOutput(Input<String> outputName) {
    return Output<dynamic>(_readOutput(outputName, required: true));
  }

  /// Gets detailed output information, preserving secret status.
  Future<StackReferenceOutputDetails> getOutputDetails(
    String outputName,
  ) async {
    final data = await getOutput(Input.fromValue(outputName)).getData();
    if (!data.isKnown || data.value == null) {
      return const StackReferenceOutputDetails();
    }
    if (data.isSecret) {
      return StackReferenceOutputDetails(secretValue: data.value);
    }
    return StackReferenceOutputDetails(value: data.value);
  }

  /// Gets a resolved non-secret output value.
  ///
  /// Throws when the output is secret.
  Future<dynamic> getValue(Input<String> outputName) async {
    final data = await getOutput(outputName).getData();
    if (data.isSecret) {
      throw Exception(
        "Cannot call 'getValue' if the referenced stack output is a secret. Use 'getOutput' instead.",
      );
    }
    return data.value;
  }

  /// Gets a required resolved non-secret output value.
  ///
  /// Throws when missing or when the output is secret.
  Future<dynamic> requireValue(Input<String> outputName) async {
    final data = await requireOutput(outputName).getData();
    if (data.isSecret) {
      throw Exception(
        "Cannot call 'requireValue' if the referenced stack output is a secret. Use 'requireOutput' instead.",
      );
    }
    return data.value;
  }

  Future<OutputData<dynamic>> _readOutput(
    Input<String> outputName, {
    required bool required,
  }) async {
    final outputNameData = await outputName.toOutput().getData();
    final outputsData = await outputs.getData();
    final stackNameData = await name.getData();

    final resources = <Resource>{
      this,
      ...outputNameData.resources,
      ...outputsData.resources,
      ...stackNameData.resources,
    };
    final isKnown = outputNameData.isKnown && outputsData.isKnown;

    if (!isKnown) {
      return OutputData<dynamic>(
        value: null,
        isKnown: false,
        isSecret: await _isSecretOutputName(outputNameData, outputsData),
        resources: resources,
      );
    }

    final outputNameValue = outputNameData.value;
    final outputMap = outputsData.value ?? <String, dynamic>{};
    final hasValue =
        outputNameValue != null && outputMap.containsKey(outputNameValue);
    if (required && !hasValue) {
      final stackName = stackNameData.value ?? '<unknown>';
      throw Exception(
        "Required output '$outputNameValue' does not exist on stack '$stackName'.",
      );
    }

    return OutputData<dynamic>(
      value: hasValue ? outputMap[outputNameValue] : null,
      isKnown: true,
      isSecret: await _isSecretOutputName(outputNameData, outputsData),
      resources: resources,
    );
  }

  Future<bool> _isSecretOutputName(
    OutputData<String> outputNameData,
    OutputData<Map<String, dynamic>> outputsData,
  ) async {
    final secretNamesData = await secretOutputNames.getData();

    if (!(outputNameData.isKnown && secretNamesData.isKnown)) {
      return outputsData.isSecret;
    }

    final names = secretNamesData.value;
    if (names == null) {
      return outputsData.isSecret;
    }

    return names.contains(outputNameData.value);
  }

  static Inputs _mapArgs(String name, StackReferenceArgs? args) {
    final stackName = args?.name ?? Input.fromValue(name);
    return {'name': stackName};
  }
}
