import 'package:pulumi/provider.dart';

class ExampleProvider extends Provider {
  ExampleProvider() : super(version: '0.1.0', schema: _schema);

  static const String _schema = '''
{
  "name": "example",
  "version": "0.1.0",
  "resources": {
    "example:index:Echo": {
      "inputProperties": {
        "message": { "type": "string" }
      },
      "requiredInputs": ["message"],
      "properties": {
        "message": { "type": "string" }
      },
      "required": ["message"]
    }
  },
  "functions": {
    "example:index:echo": {
      "inputs": {
        "type": "object",
        "properties": {
          "message": { "type": "string" }
        },
        "required": ["message"]
      },
      "outputs": {
        "type": "object",
        "properties": {
          "echo": { "type": "string" }
        },
        "required": ["echo"]
      }
    }
  }
}
''';

  @override
  Future<ParameterizeResult> parameterizeArgs(List<String> args) async {
    return const ParameterizeResult(name: 'example', version: '0.1.0');
  }

  @override
  Future<CheckResult> check(
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    final failures = <CheckFailure>[];
    final message = news['message']?.toString();
    if (message == null || message.isEmpty) {
      failures.add(
        const CheckFailure(property: 'message', reason: 'message is required'),
      );
    }
    return CheckResult(inputs: news, failures: failures);
  }

  @override
  Future<DiffResult> diff(
    String id,
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    final changed = olds['message'] != news['message'];
    return DiffResult(
      changes: changed,
      stables: changed ? const <String>[] : const <String>['message'],
      diffs: changed ? const <String>['message'] : const <String>[],
    );
  }

  @override
  Future<CreateResult> create(String urn, Map<String, dynamic> inputs) async {
    return CreateResult(
      id: 'echo-1',
      outs: <String, dynamic>{'message': inputs['message']?.toString() ?? ''},
    );
  }

  @override
  Future<UpdateResult> update(
    String id,
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    return UpdateResult(
      outs: <String, dynamic>{'message': news['message']?.toString() ?? ''},
    );
  }

  @override
  Future<InvokeResult> invoke(String token, Map<String, dynamic> args) async {
    if (token != 'example:index:echo') {
      return const InvokeResult(
        outputs: <String, dynamic>{},
        failures: <CheckFailure>[
          CheckFailure(property: 'token', reason: 'unknown invoke token'),
        ],
      );
    }

    return InvokeResult(
      outputs: <String, dynamic>{'echo': args['message']?.toString() ?? ''},
      failures: const <CheckFailure>[],
    );
  }
}

Future<void> main(List<String> args) async {
  await serve(ExampleProvider(), args);
}
