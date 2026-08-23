import 'package:pulumi/provider.dart' as provider;
import 'package:pulumi/pulumi.dart' as pulumi;

const _schema =
    r'''{"name":"builtin-info-component","version":"37.0.0","resources":{"builtin-info-component:index:BuiltinInfo":{"type":"object","isComponent":true,"properties":{"organization":{"type":"string"},"project":{"type":"string"},"stack":{"type":"string"}}}}}''';

class _BuiltinInfo extends pulumi.ComponentResource {
  _BuiltinInfo(String name, pulumi.ComponentResourceOptions options)
    : organization = pulumi.Output.create(
        pulumi.Deployment.instance.organizationName,
      ),
      project = pulumi.Output.create(pulumi.Deployment.instance.projectName),
      stack = pulumi.Output.create(pulumi.Deployment.instance.stackName),
      super(
        'builtin-info-component:index:BuiltinInfo',
        name,
        const <String, pulumi.Input<dynamic>>{},
        options,
      ) {
    registerOutputs(<String, dynamic>{
      'organization': organization,
      'project': project,
      'stack': stack,
    });
  }

  final pulumi.Output<String> organization;
  final pulumi.Output<String> project;
  final pulumi.Output<String> stack;
}

class _BuiltinInfoProvider extends provider.Provider {
  const _BuiltinInfoProvider() : super(version: '37.0.0', schema: _schema);

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
    if (type != 'builtin-info-component:index:BuiltinInfo') {
      throw provider.UnsupportedProviderOperationError(
        operation: 'construct',
        reason: 'unknown resource type $type',
      );
    }
    final component = _BuiltinInfo(name, options);
    return provider.ConstructResult(
      urn: component.urn.input(),
      state: <String, pulumi.Input<dynamic>>{
        'organization': component.organization.input(),
        'project': component.project.input(),
        'stack': component.stack.input(),
      },
    );
  }
}

Future<void> main(List<String> args) =>
    provider.serve(const _BuiltinInfoProvider(), args);
