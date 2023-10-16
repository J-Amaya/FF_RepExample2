import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start EjApiCall Group Code

class EjApiCallGroup {
  static String baseUrl = 'https://retoolapi.dev/qwBJ7G/data_user';
  static Map<String, String> headers = {};
  static GetUsersCall getUsersCall = GetUsersCall();
}

class GetUsersCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsers',
      apiUrl: '${EjApiCallGroup.baseUrl}//',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
        true,
      );
  dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$[:].last_name''',
        true,
      );
  dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$[:].first_name''',
        true,
      );
  dynamic lastLogin(dynamic response) => getJsonField(
        response,
        r'''$[:].last_login''',
        true,
      );
}

/// End EjApiCall Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
