import 'package:pulumi/provider.dart' as provider;
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_simple/index.dart' as simple;

const _schema =
    r'''{"name":"conformance-component","version":"22.0.0","resources":{"conformance-component:index:Simple":{"type":"object","isComponent":true,"properties":{"value":{"type":"boolean"}},"required":["value"],"inputProperties":{"value":{"type":"boolean"}},"requiredInputs":["value"]}}}''';

class _SimpleComponent extends pulumi.ComponentResource {
  _SimpleComponent(
    String name,
    pulumi.Input<bool> input,
    pulumi.ComponentResourceOptions options,
  ) : value = input.toOutput(),
      super(
        'conformance-component:index:Simple',
        name,
        <String, pulumi.Input<dynamic>>{'value': input},
        options,
      ) {
    simple.ResourceType(
      '$name-child',
      args: simple.ResourceArgs(
        value: pulumi.Input<bool>.fromOutput(
          value.apply<bool>((value) => !value),
        ),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );
    registerOutputs(<String, dynamic>{'value': value});
  }

  final pulumi.Output<bool> value;
}

class _ConformanceProvider extends provider.Provider {
  const _ConformanceProvider() : super(version: '22.0.0', schema: _schema);

  @override
  Future<provider.CreateResult> create(
    String urn,
    Map<String, dynamic> inputs,
  ) => throw const provider.UnsupportedProviderOperationError(
    operation: 'create',
    reason: 'component-only provider',
  );

  @override
  Future<provider.ConstructResult> construct(
    String name,
    String type,
    pulumi.Inputs inputs,
    pulumi.ComponentResourceOptions options,
  ) async {
    if (type != 'conformance-component:index:Simple') {
      throw provider.UnsupportedProviderOperationError(
        operation: 'construct',
        reason: 'unknown resource type $type',
      );
    }
    final value = inputs['value']!.toOutput().apply<bool>(
      (value) => value as bool,
    );
    final component = _SimpleComponent(name, value.input(), options);
    return provider.ConstructResult(
      urn: component.urn.input(),
      state: <String, pulumi.Input<dynamic>>{'value': component.value.input()},
    );
  }
}

Future<void> main(List<String> args) =>
    provider.serve(const _ConformanceProvider(), args);
