import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_password_verifier_worker.dart';

/// The JS implementation of [SrpPasswordVerifierWorker].
class SrpPasswordVerifierWorkerImpl extends SrpPasswordVerifierWorker {
  @override
  String get name => 'SrpPasswordVerifierWorker';
  @override
  String get jsEntrypoint =>
      'packages/amplify_auth_cognito_dart/workers.dart.js';
  @override
  List<String> get fallbackUrls =>
      const ['packages/amplify_auth_cognito_dart/workers.js'];
}
