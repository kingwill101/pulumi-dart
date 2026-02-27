import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

class _RenamedInputArgs extends InputArgs {
  _RenamedInputArgs({this.nestedValue, this.displayName});

  final Input<String>? nestedValue;
  final Input<String>? displayName;

  @override
  Map<String, InputInfo> get inputInfos => {
    'nestedValue': InputInfo(
      const InputInfoArg(name: 'nestedValue'),
      'nestedValue',
      String,
      (obj) => (obj as _RenamedInputArgs).nestedValue,
    ),
    'displayName': InputInfo(
      const InputInfoArg(name: 'display_name'),
      'displayName',
      String,
      (obj) => (obj as _RenamedInputArgs).displayName,
    ),
  };
}

void main() {
  group('property_renaming', () {
    test(
      'InputArgs emits serialized keys based on InputInfoArg name',
      () async {
        final args = _RenamedInputArgs(
          nestedValue: Input.fromValue('nested'),
          displayName: Input.fromValue('display'),
        );

        final dict = await args.toDictionary();
        expect(
          dict,
          equals({
            'nestedValue': args.nestedValue,
            'display_name': args.displayName,
          }),
        );
      },
    );
  });
}
