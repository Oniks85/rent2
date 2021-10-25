import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pay_for_a_room/pay_for_a_room_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfBookingWidget extends StatefulWidget {
  ListOfBookingWidget({Key key}) : super(key: key);

  @override
  _ListOfBookingWidgetState createState() => _ListOfBookingWidgetState();
}

class _ListOfBookingWidgetState extends State<ListOfBookingWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: Color(0xFF060606)),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    labelColor: FlutterFlowTheme.primaryColor,
                    labelStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                    indicatorColor: FlutterFlowTheme.secondaryColor,
                    tabs: [
                      Tab(
                        text: 'Актуальные',
                      ),
                      Tab(
                        text: 'Завершенные',
                      )
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        StreamBuilder<List<HostelsRecord>>(
                          stream: queryHostelsRecord(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: LinearProgressIndicator(
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                              );
                            }
                            List<HostelsRecord> columnHostelsRecordList =
                                snapshot.data;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(columnHostelsRecordList.length,
                                      (columnIndex) {
                                final columnHostelsRecord =
                                    columnHostelsRecordList[columnIndex];
                                return Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 5, 5, 0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 3),
                                                          child: Container(
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            height: 90,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        6),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            6),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        6),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFFC8CED5),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          1,
                                                                          0,
                                                                          10,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(6),
                                                                              child: Image.asset(
                                                                                'assets/images/image1.jpeg',
                                                                                width: 80,
                                                                                height: 80,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  'г.Москва, ул. Часовая 23/8к1',
                                                                                  style: FlutterFlowTheme.subtitle1.override(
                                                                                    fontFamily: 'Lexend Deca',
                                                                                    color: Color(0xFF15212B),
                                                                                    fontSize: 18,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 4, 0),
                                                                                    child: Text(
                                                                                      'Место в 8ми местной комнате',
                                                                                      style: FlutterFlowTheme.bodyText2.override(
                                                                                        fontFamily: 'Lexend Deca',
                                                                                        color: Color(0xFF8B97A2),
                                                                                        fontSize: 12,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            Text(
                                                                              'До выселения: 29 Дней',
                                                                              style: FlutterFlowTheme.subtitle1.override(
                                                                                fontFamily: 'Lexend Deca',
                                                                                color: Color(0xFF15212B),
                                                                                fontSize: 18,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    setState(() =>
                                                        _loadingButton = true);
                                                    try {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              PayForARoomWidget(),
                                                        ),
                                                      );
                                                    } finally {
                                                      setState(() =>
                                                          _loadingButton =
                                                              false);
                                                    }
                                                  },
                                                  text: 'Продлить',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    textStyle: FlutterFlowTheme
                                                        .subtitle2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 12,
                                                  ),
                                                  loading: _loadingButton,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            StreamBuilder<List<HostelsRecord>>(
                              stream: queryHostelsRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: LinearProgressIndicator(
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  );
                                }
                                List<HostelsRecord> columnHostelsRecordList =
                                    snapshot.data;
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      columnHostelsRecordList.length,
                                      (columnIndex) {
                                    final columnHostelsRecord =
                                        columnHostelsRecordList[columnIndex];
                                    return Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        3),
                                                            child: Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: 90,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          6),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          6),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          6),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFC8CED5),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            1,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              0,
                                                                              8,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(6),
                                                                                child: Image.asset(
                                                                                  'assets/images/image1.jpeg',
                                                                                  width: 80,
                                                                                  height: 80,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'г.Москва, ул. Часовая 23/8к1',
                                                                                    style: FlutterFlowTheme.subtitle1.override(
                                                                                      fontFamily: 'Lexend Deca',
                                                                                      color: Color(0xFF15212B),
                                                                                      fontSize: 18,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 4, 0),
                                                                                      child: Text(
                                                                                        'Место в 8ми местной комнате',
                                                                                        style: FlutterFlowTheme.bodyText2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Color(0xFF8B97A2),
                                                                                          fontSize: 12,
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                                                child: Text(
                                                                                  'Дата выселения: 15 января 2021',
                                                                                  style: FlutterFlowTheme.subtitle1.override(
                                                                                    fontFamily: 'Lexend Deca',
                                                                                    color: Color(0xFF15212B),
                                                                                    fontSize: 16,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
