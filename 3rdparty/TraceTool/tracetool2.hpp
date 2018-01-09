// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'TraceTool.pas' rev: 5.00

#ifndef TraceToolHPP
#define TraceToolHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <TypInfo.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Contnrs.hpp>	// Pascal unit
#include <SyncObjs.hpp>	// Pascal unit
#include <AxCtrls.hpp>	// Pascal unit
#include <ComObj.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <ActiveX.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tracetool
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TTrace;
__interface ITraceToSend;
typedef System::DelphiInterface<ITraceToSend> _di_ITraceToSend;
class DELPHICLASS TTraceOptions;
__interface IWinTrace;
typedef System::DelphiInterface<IWinTrace> _di_IWinTrace;
__interface IWinWatch;
typedef System::DelphiInterface<IWinWatch> _di_IWinWatch;
__interface ITraceNodeEx;
typedef System::DelphiInterface<ITraceNodeEx> _di_ITraceNodeEx;
__interface ITraceTable;
typedef System::DelphiInterface<ITraceTable> _di_ITraceTable;
class PASCALIMPLEMENTATION TTrace : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	/*         class method */ static void __fastcall SendToWinTraceClient(TMetaClass* vmt, Classes::TStringList* 
		CommandList, AnsiString winTraceId, System::TDateTime DateTime, AnsiString ThreadName);
	/*         class method */ static void __fastcall SendToWinWatchClient(TMetaClass* vmt, Classes::TStringList* 
		CommandList, AnsiString winWatchId);
	
public:
	/*         class method */ static void __fastcall SendToClient(TMetaClass* vmt, Classes::TStringList* 
		CommandList)/* overload */;
	/*         class method */ static _di_ITraceToSend __fastcall Debug(TMetaClass* vmt);
	/*         class method */ static _di_ITraceToSend __fastcall Warning(TMetaClass* vmt);
	/*         class method */ static _di_ITraceToSend __fastcall Error(TMetaClass* vmt);
	/*         class method */ static TTraceOptions* __fastcall Options(TMetaClass* vmt);
	/*         class method */ static _di_IWinTrace __fastcall WinTrace(TMetaClass* vmt);
	/*         class method */ static _di_IWinWatch __fastcall Watches(TMetaClass* vmt);
	/*         class method */ static void __fastcall ClearAll(TMetaClass* vmt);
	/*         class method */ static void __fastcall Show(TMetaClass* vmt, bool IsVisible);
	/*         class method */ static void __fastcall Find(TMetaClass* vmt, AnsiString Text, BOOL Sensitive
		, BOOL WholeWord, BOOL Highlight, BOOL SearchInAllPages);
	/*         class method */ static void __fastcall CloseViewer(TMetaClass* vmt);
	/*         class method */ static void __fastcall Flush(TMetaClass* vmt, int FlushTimeOut);
	/*         class method */ static AnsiString __fastcall CreateTraceID(TMetaClass* vmt);
	/*         class method */ static _di_IWinTrace __fastcall CreateWinTrace(TMetaClass* vmt, const AnsiString 
		WinTraceID, const AnsiString WinTraceText);
	/*         class method */ static _di_IWinWatch __fastcall CreateWinWatch(TMetaClass* vmt, const AnsiString 
		WinWatchID, const AnsiString WinWatchText);
	/*         class method */ static _di_ITraceNodeEx __fastcall CreateNodeEx(TMetaClass* vmt, _di_ITraceToSend 
		ParentNode);
	/*         class method */ static _di_ITraceTable __fastcall CreateTraceTable(TMetaClass* vmt);
	/*         class method */ static void __fastcall stop(TMetaClass* vmt);
	/*         class method */ static void __fastcall start(TMetaClass* vmt);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TTrace(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TTrace(void) { }
	#pragma option pop
	
};


__interface INTERFACE_UUID("{4EC8650B-E855-47B4-B032-B506A20DA664}") IWinWatch  : public IUnknown 
{
	
public:
	virtual AnsiString __fastcall getID(void) = 0 ;
	virtual void __fastcall setID(const AnsiString v) = 0 ;
	virtual bool __fastcall getEnabled(void) = 0 ;
	virtual void __fastcall setEnabled(const bool v) = 0 ;
	virtual int __fastcall getTag(void) = 0 ;
	virtual void __fastcall setTag(const int v) = 0 ;
	__property AnsiString id = {read=getID, write=setID};
	__property bool Enabled = {read=getEnabled, write=setEnabled};
	__property int Tag = {read=getTag, write=setTag};
	virtual void __fastcall DisplayWin(void) = 0 ;
	virtual void __fastcall ClearAll(void) = 0 ;
	virtual void __fastcall Close(void) = 0 ;
	virtual void __fastcall Send(const AnsiString WatchName, const AnsiString watchValue) = 0 /* overload */
		;
	virtual void __fastcall Send(const AnsiString WatchName, const Variant &watchValue) = 0 /* overload */
		;
	virtual void __fastcall Send(const AnsiString WatchName, const System::TObject* watchValue) = 0 /* overload */
		;
};

#pragma option push -b-
enum TEncodingTrace { enSingleByte, enUnicode };
#pragma option pop

#pragma option push -b-
enum TSendMode { tmWinMsg, tmAlternate, tmNone };
#pragma option pop

class DELPHICLASS TSocketTrace;
class PASCALIMPLEMENTATION TSocketTrace : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	virtual void __fastcall InitClientSocket(void) = 0 ;
	virtual void __fastcall Send(const AnsiString str, const int nbchar) = 0 ;
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TSocketTrace(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TSocketTrace(void) { }
	#pragma option pop
	
};


typedef void __fastcall (*TSendStackProc)(_di_ITraceNodeEx NodeEx, int Level);

typedef void __fastcall (*TSendCallerProc)(_di_ITraceNodeEx NodeEx, int Level);

typedef AnsiString __fastcall (*TSendMethodProc)(_di_ITraceNodeEx NodeEx, const void * Addr);

#pragma option push -b-
enum TraceDisplayFlag { ShowModifiers, ShowCustomAttributes, ShowNonPublic, ShowInheritedMembers, ShowClassInfo, 
	ShowFields, ShowEvents, ShowMethods };
#pragma option pop

typedef Set<TraceDisplayFlag, ShowModifiers, ShowMethods>  TraceDisplayFlags;

class PASCALIMPLEMENTATION TTraceOptions : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	AnsiString fProcessFileName;
	TSendMode fSendMode;
	bool fSendFunctions;
	bool fSendInherited;
	bool fSendEvents;
	int fSocketPort;
	AnsiString fSocketHost;
	bool fSocketUdp;
	int fObjectTreeDepth;
	bool fSendDate;
	bool fSendThreadId;
	__fastcall TTraceOptions(void);
	void __fastcall _SendProcessName(const bool Value);
	bool __fastcall _IsProcessName(void);
	void __fastcall setSocketHost(const AnsiString Value);
	void __fastcall setSocketPort(const int Value);
	void __fastcall setSocketUdp(const bool Value);
	
protected:
	TraceDisplayFlags __fastcall GetDefault(void);
	
public:
	__property TSendMode SendMode = {read=fSendMode, write=fSendMode, nodefault};
	__property bool SendProcessName = {read=_IsProcessName, write=_SendProcessName, nodefault};
	__property bool SendDate = {read=fSendDate, write=fSendDate, nodefault};
	__property bool SendFunctions = {read=fSendFunctions, write=fSendFunctions, nodefault};
	__property bool SendInherited = {read=fSendInherited, write=fSendInherited, nodefault};
	__property bool SendEvents = {read=fSendEvents, write=fSendEvents, nodefault};
	__property bool SendThreadId = {read=fSendThreadId, write=fSendThreadId, nodefault};
	__property AnsiString SocketHost = {read=fSocketHost, write=setSocketHost};
	__property int SocketPort = {read=fSocketPort, write=setSocketPort, nodefault};
	__property bool SocketUdp = {read=fSocketUdp, write=setSocketUdp, nodefault};
	__property int ObjectTreeDepth = {read=fObjectTreeDepth, write=fObjectTreeDepth, nodefault};
public:

// TPA : remove public constructor
	#pragma option push -w-inl
//	/* TObject.Create */ inline __fastcall TTraceOptions(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TTraceOptions(void) { }
	#pragma option pop
	
};


class DELPHICLASS TFontDetail;
class PASCALIMPLEMENTATION TFontDetail : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	int ColId;
	bool Bold;
	bool Italic;
	Graphics::TColor Color;
	int Size;
	AnsiString FontName;
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TFontDetail(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TFontDetail(void) { }
	#pragma option pop
	
};


typedef DynamicArray<TFontDetail* >  TraceTool__6;


class DELPHICLASS TMemberNode;
class PASCALIMPLEMENTATION TMemberNode : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	virtual void __fastcall BeforeDestruction(void);
	
private:
	DynamicArray<TFontDetail* >  FontDetails;
	
public:
	AnsiString Col1;
	AnsiString Col2;
	AnsiString Col3;
	DynamicArray<TMemberNode* >  Members;
	int Tag;
	int ViewerKind;
	TMemberNode* __fastcall Add(const TMemberNode* member)/* overload */;
	TMemberNode* __fastcall Add(const AnsiString col1)/* overload */;
	TMemberNode* __fastcall Add(const AnsiString col1, const AnsiString col2)/* overload */;
	TMemberNode* __fastcall Add(const AnsiString col1, const AnsiString col2, const AnsiString col3)/* overload */
		;
	TMemberNode* __fastcall SetFontDetail(const int ColId, const bool Bold, const bool Italic, const int 
		Color, const int Size, const AnsiString FontName);
	void __fastcall AddToStringList(Classes::TStringList* CommandList);
	__fastcall TMemberNode(void)/* overload */;
	__fastcall TMemberNode(const AnsiString col1)/* overload */;
	__fastcall TMemberNode(const AnsiString col1, const AnsiString col2)/* overload */;
	__fastcall TMemberNode(const AnsiString col1, const AnsiString col2, const AnsiString col3)/* overload */
		;
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TMemberNode(void) { }
	#pragma option pop
	
};

// TPA : moved after TMemberNode definition
typedef DynamicArray<TMemberNode* >  TraceTool__7;


__interface INTERFACE_UUID("{E6647A85-38B5-4EB5-8A6B-49CD78A7C1C3}") ITraceTable  : public IUnknown 
	
{
	
public:
	virtual void __fastcall AddColumnTitle(const AnsiString ColTitle) = 0 ;
	virtual void __fastcall AddRow(void) = 0 ;
	virtual void __fastcall AddRowData(const AnsiString cell) = 0 ;
	virtual void __fastcall CopyToNodeMembers(TMemberNode* NodeMembers) = 0 ;
};

__interface ITraceNodeBase;
typedef System::DelphiInterface<ITraceNodeBase> _di_ITraceNodeBase;
__interface INTERFACE_UUID("{E0C81242-AFC2-470A-A3CA-A71B2D867011}") ITraceNodeBase  : public IUnknown 
	
{
	
public:
	virtual AnsiString __fastcall getID(void) = 0 ;
	virtual void __fastcall setID(const AnsiString v) = 0 ;
	virtual bool __fastcall getEnabled(void) = 0 ;
	virtual void __fastcall setEnabled(const bool v) = 0 ;
	virtual int __fastcall getIconIndex(void) = 0 ;
	virtual void __fastcall setIconIndex(const int v) = 0 ;
	virtual AnsiString __fastcall getWinTraceId(void) = 0 ;
	virtual void __fastcall setWinTraceId(const AnsiString v) = 0 ;
	virtual int __fastcall getTag(void) = 0 ;
	virtual void __fastcall setTag(const int v) = 0 ;
	__property AnsiString id = {read=getID, write=setID};
	__property bool Enabled = {read=getEnabled, write=setEnabled};
	__property int IconIndex = {read=getIconIndex, write=setIconIndex};
	__property AnsiString WinTraceId = {read=getWinTraceId, write=setWinTraceId};
	__property int Tag = {read=getTag, write=setTag};
	virtual _di_ITraceNodeEx __fastcall CreateNodeEx(void) = 0 ;
};

__interface ITraceNode;
typedef System::DelphiInterface<ITraceNode> _di_ITraceNode;
__interface INTERFACE_UUID("{FD1BD5BD-DABC-4F51-B798-B91361621CBF}") ITraceToSend  : public ITraceNodeBase 
	
{
	
public:
	virtual _di_ITraceNode __fastcall Send(const AnsiString leftMsg) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall Send(const AnsiString leftMsg, const AnsiString RightMsg) = 0 /* overload */
		;
	virtual _di_ITraceNode __fastcall Send(const Variant &leftMsg) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall Send(const Variant &leftMsg, const Variant &RightMsg) = 0 /* overload */
		;
	virtual _di_ITraceNode __fastcall SendObject(const AnsiString leftMsg, const System::TObject* Obj) = 0 
		/* overload */;
	virtual _di_ITraceNode __fastcall SendObject(const AnsiString leftMsg, const System::TObject* Obj, 
		const TraceDisplayFlags flags) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall SendObject(const AnsiString leftMsg, const _di_IDispatch disp) = 0 
		/* overload */;
	virtual _di_ITraceNode __fastcall SendObject(const AnsiString leftMsg, const _di_IDispatch disp, const 
		TraceDisplayFlags flags) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall SendObjectV(const AnsiString leftMsg, const Variant &v) = 0 /* overload */
		;
	virtual _di_ITraceNode __fastcall SendObjectV(const AnsiString leftMsg, const Variant &v, const TraceDisplayFlags 
		flags) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall SendValue(const AnsiString leftMsg, const Variant &v, const AnsiString 
		ObjTitle) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall SendValue(const AnsiString leftMsg, const System::TObject* Obj, const 
		AnsiString ObjTitle) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall SendDump(const AnsiString leftMsg, const AnsiString Title, const 
		void * memory, const int ByteCount) = 0 ;
	virtual _di_ITraceNode __fastcall SendStrings(const AnsiString leftMsg, const Classes::TStrings* strings
		) = 0 ;
	virtual _di_ITraceNode __fastcall SendStack(const AnsiString leftMsg, const int level) = 0 ;
	virtual _di_ITraceNode __fastcall SendCaller(const AnsiString leftMsg, const int level) = 0 ;
	virtual _di_ITraceNode __fastcall SendMethod(const AnsiString leftMsg, const void * Meth) = 0 ;
	virtual _di_ITraceNode __fastcall SendTable(const AnsiString leftMsg, _di_ITraceTable table) = 0 /* overload */
		;
	virtual _di_ITraceNode __fastcall SendTable(const AnsiString leftMsg, System::TObject* const * arr, 
		const int arr_Size) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall SendTable(const AnsiString leftMsg, Classes::TList* list) = 0 /* overload */
		;
	virtual _di_ITraceNode __fastcall SendTable(const AnsiString leftMsg, Classes::TCollection* collection
		) = 0 /* overload */;
	virtual _di_ITraceNode __fastcall SendTable(const AnsiString leftMsg, Classes::TStrings* strings) = 0 
		/* overload */;
	virtual _di_ITraceNode __fastcall SendXml(const AnsiString leftMsg, const AnsiString XML) = 0 ;
	virtual _di_ITraceNode __fastcall SendBitmap(const AnsiString leftMsg, const Graphics::TBitmap* Bitmap
		) = 0 ;
	virtual _di_ITraceNode __fastcall SendBackgroundColor(const AnsiString leftMsg, const int Color, const 
		int ColId) = 0 ;
	virtual void __fastcall EnterMethod(const AnsiString leftMsg, const AnsiString rightMsg, const Graphics::TColor 
		BackGroundColor) = 0 ;
	virtual void __fastcall ExitMethod(const AnsiString leftMsg, const AnsiString rightMsg, const Graphics::TColor 
		BackGroundColor) = 0 ;
	virtual void __fastcall Indent(const AnsiString leftMsg, const AnsiString rightMsg, const Graphics::TColor 
		BackGroundColor, const bool IsEnter) = 0 ;
	virtual void __fastcall UnIndent(const AnsiString leftMsg, const AnsiString rightMsg, const Graphics::TColor 
		BackGroundColor, const bool IsExit) = 0 ;
	virtual AnsiString __fastcall getLastContextId(void) = 0 ;
	virtual int __fastcall GetIndentLevel(void) = 0 ;
	__property int IndentLevel = {read=GetIndentLevel};
};

__interface INTERFACE_UUID("{0287CF63-9832-44CF-824C-9334D79B82A3}") ITraceNode  : public ITraceToSend 
	
{
	
public:
	virtual _di_ITraceNode __fastcall Resend(const AnsiString leftMsg, const AnsiString RightMsg) = 0 /* overload */
		;
	virtual _di_ITraceNode __fastcall ResendLeft(const AnsiString leftMsg) = 0 ;
	virtual _di_ITraceNode __fastcall ResendRight(const AnsiString RightMsg) = 0 ;
	virtual _di_ITraceNode __fastcall ResendIconIndex(const int index) = 0 ;
	virtual _di_ITraceNode __fastcall Append(const AnsiString leftMsg, const AnsiString RightMsg) = 0 ;
		
	virtual _di_ITraceNode __fastcall AppendLeft(const AnsiString leftMsg) = 0 ;
	virtual _di_ITraceNode __fastcall AppendRight(const AnsiString RightMsg) = 0 ;
	virtual _di_ITraceNode __fastcall Show(void) = 0 ;
	virtual _di_ITraceNode __fastcall SetSelected(void) = 0 ;
	virtual _di_ITraceNode __fastcall Delete(void) = 0 ;
	virtual _di_ITraceNode __fastcall DeleteChildren(void) = 0 ;
	virtual _di_ITraceNode __fastcall SetFontDetail(const int ColId, const bool Bold, const bool Italic
		, const int Color, const int Size, const AnsiString FontName) = 0 ;
	virtual _di_ITraceNode __fastcall SetBackgroundColor(const Graphics::TColor Color, const int ColId)
		 = 0 ;
	virtual _di_ITraceNode __fastcall SetBookmark(bool Bookmarked) = 0 ;
	virtual _di_ITraceNode __fastcall SetVisible(bool Visible) = 0 ;
	virtual _di_ITraceNode __fastcall GotoNextSibling(void) = 0 ;
	virtual _di_ITraceNode __fastcall GotoPrevSibling(void) = 0 ;
	virtual _di_ITraceNode __fastcall GotoFirstChild(void) = 0 ;
	virtual _di_ITraceNode __fastcall GotoLastChild(void) = 0 ;
};

__interface INTERFACE_UUID("{20EDD6B8-D44A-49CE-A304-E42364C733B5}") ITraceNodeEx  : public ITraceNodeBase 
	
{
	
public:
	virtual AnsiString __fastcall getLeftMsg(void) = 0 ;
	virtual void __fastcall setLeftMsg(const AnsiString v) = 0 ;
	virtual AnsiString __fastcall getRightMsg(void) = 0 ;
	virtual void __fastcall setRightMsg(const AnsiString v) = 0 ;
	virtual AnsiString __fastcall getParentNodeId(void) = 0 ;
	virtual void __fastcall setParentNodeId(const AnsiString v) = 0 ;
	virtual System::TDateTime __fastcall getTime(void) = 0 ;
	virtual void __fastcall setTime(const System::TDateTime v) = 0 ;
	virtual AnsiString __fastcall getThreadName(void) = 0 ;
	virtual void __fastcall setThreadName(const AnsiString v) = 0 ;
	virtual TMemberNode* __fastcall getMembers(void) = 0 ;
	__property AnsiString LeftMsg = {read=getLeftMsg, write=setLeftMsg};
	__property AnsiString RightMsg = {read=getRightMsg, write=setRightMsg};
	__property AnsiString ParentNodeId = {read=getParentNodeId, write=setParentNodeId};
	__property System::TDateTime time = {read=getTime, write=setTime};
	__property AnsiString ThreadName = {read=getThreadName, write=setThreadName};
	__property TMemberNode* Members = {read=getMembers};
	virtual void __fastcall AddDump(const AnsiString Title, const void * memory, const int ByteCount) = 0 
		;
	virtual void __fastcall AddObject(const System::TObject* Obj) = 0 /* overload */;
	virtual void __fastcall AddObject(const System::TObject* Obj, const TraceDisplayFlags flags) = 0 /* overload */
		;
	virtual void __fastcall AddObject(const _di_IDispatch Disp) = 0 /* overload */;
	virtual void __fastcall AddObject(const _di_IDispatch Disp, const TraceDisplayFlags flags) = 0 /* overload */
		;
	virtual void __fastcall AddObjectV(const Variant &v) = 0 /* overload */;
	virtual void __fastcall AddObjectV(const Variant &v, const TraceDisplayFlags flags) = 0 /* overload */
		;
	virtual void __fastcall AddValue(const Variant &v, const AnsiString ObjTitle) = 0 /* overload */;
	virtual void __fastcall AddValue(const System::TObject* Obj, const AnsiString ObjTitle) = 0 /* overload */
		;
	virtual void __fastcall AddValue(const System::TObject* Obj, const AnsiString ObjTitle, const int MaxLevel
		) = 0 /* overload */;
	virtual void __fastcall AddStrings(const Classes::TStrings* strings) = 0 ;
	virtual void __fastcall AddStackTrace(const int Level) = 0 ;
	virtual void __fastcall AddCaller(const int Level) = 0 ;
	virtual void __fastcall AddMethod(const void * Meth) = 0 ;
	virtual void __fastcall AddTable(_di_ITraceTable table) = 0 /* overload */;
	virtual void __fastcall AddTable(System::TObject* const * arr, const int arr_Size) = 0 /* overload */
		;
	virtual void __fastcall AddTable(Classes::TList* list) = 0 /* overload */;
	virtual void __fastcall AddTable(Classes::TCollection* collection) = 0 /* overload */;
	virtual void __fastcall AddTable(Classes::TStrings* strings) = 0 /* overload */;
	virtual void __fastcall AddBitmap(const Graphics::TBitmap* Bitmap) = 0 ;
	virtual void __fastcall AddXML(const AnsiString xml) = 0 ;
	virtual _di_ITraceNodeEx __fastcall AddFontDetail(const int ColId, const bool Bold, const bool Italic
		, const int Color, const int Size, const AnsiString FontName) = 0 ;
	virtual void __fastcall AddBackgroundColor(const Graphics::TColor Color, const int ColId) = 0 ;
	virtual _di_ITraceNode __fastcall Send(void) = 0 ;
	virtual _di_ITraceNode __fastcall Resend(void) = 0 /* overload */;
};

__interface INTERFACE_UUID("{3BD46634-FBF1-4E54-B554-7EE65C34962A}") IWinTrace  : public ITraceToSend 
	
{
	
public:
	virtual _di_ITraceToSend __fastcall Warning(void) = 0 ;
	virtual _di_ITraceToSend __fastcall Error(void) = 0 ;
	virtual _di_ITraceToSend __fastcall Debug(void) = 0 ;
	virtual void __fastcall SaveToTextfile(const AnsiString Filename) = 0 ;
	virtual void __fastcall SaveToXml(const AnsiString Filename, const AnsiString styleSheet) = 0 ;
	virtual void __fastcall LoadXml(const AnsiString Filename) = 0 ;
	virtual void __fastcall DisplayWin(void) = 0 ;
	virtual void __fastcall SetMultiColumn(const int MainColIndex) = 0 ;
	virtual void __fastcall SetColumnsTitle(const AnsiString Titles) = 0 ;
	virtual void __fastcall SetColumnsWidth(const AnsiString Widths) = 0 ;
	virtual void __fastcall GotoFirstNode(void) = 0 ;
	virtual void __fastcall GotoLastNode(void) = 0 ;
	virtual void __fastcall FindNext(bool SearForward) = 0 ;
	virtual void __fastcall GotoBookmark(int Pos) = 0 ;
	virtual void __fastcall ClearBookmark(void) = 0 ;
	virtual void __fastcall ClearFilter(void) = 0 ;
	virtual void __fastcall AddFilter(int Column, int Compare, AnsiString Text) = 0 ;
	virtual void __fastcall ApplyFilter(bool ConditionAnd, bool ShowMatch, bool IncludeChildren) = 0 ;
	virtual void __fastcall ClearAll(void) = 0 ;
	virtual void __fastcall SetLogFile(const AnsiString Filename, int mode, int maxLines) = 0 ;
	virtual AnsiString __fastcall GetLocalLogFile(void) = 0 ;
	virtual void __fastcall Close(void) = 0 ;
	virtual void __fastcall LinkToPlugin(const AnsiString PluginName, const int flags) = 0 ;
	virtual void __fastcall CreateResource(const int ResId, const int ResType, const int ResWidth, const 
		AnsiString ResText) = 0 ;
	virtual void __fastcall DisableResource(const int ResId) = 0 ;
	virtual void __fastcall SetTextResource(const int ResId, const AnsiString ResText) = 0 ;
};

//-- var, const, procedure ---------------------------------------------------
static const Word RECIEVETIMEOUT = 0x3e8;
static const Shortint WMD = 0x7b;
static const Word WM_SEND_TO_DEBUG = 0x401;
static const Word WM_FROM_DEBUG = 0x402;
static const Shortint CST_ICO_DEFAULT = 0xffffffff;
static const Shortint CST_ICO_FORM = 0x0;
static const Shortint CST_ICO_COMPONENT = 0x1;
static const Shortint CST_ICO_CONTROL = 0x3;
static const Shortint CST_ICO_PROP = 0x5;
static const Shortint CST_ICO_MENU = 0xf;
static const Shortint CST_ICO_MENU_ITEM = 0x10;
static const Shortint CST_ICO_COLLECT_ITEM = 0x15;
static const Shortint CST_ICO_WARNING = 0x16;
static const Shortint CST_ICO_ERROR = 0x17;
static const Shortint CST_ICO_INFO = 0x18;
static const Shortint CST_PLUG_ONACTION = 0x1;
static const Shortint CST_PLUG_ONBEFOREDELETE = 0x2;
static const Shortint CST_PLUG_ONTIMER = 0x4;
static const Shortint CST_VIEWER_NONE = 0x0;
static const Shortint CST_VIEWER_DUMP = 0x1;
static const Shortint CST_VIEWER_XML = 0x2;
static const Shortint CST_VIEWER_TABLE = 0x3;
static const Shortint CST_VIEWER_STACK = 0x4;
static const Shortint CST_VIEWER_BITMAP = 0x5;
static const Shortint CST_VIEWER_OBJECT = 0x6;
static const Shortint CST_VIEWER_VALUE = 0x7;
static const Shortint CST_VIEWER_ENTER = 0x8;
static const Shortint CST_VIEWER_EXIT = 0x9;
static const Shortint CST_VIEWER_TXT = 0xa;
static const Shortint CST_RES_BUT_RIGHT = 0x1;
static const Shortint CST_RES_BUT_LEFT = 0x2;
static const Shortint CST_RES_LABEL_RIGHT = 0x3;
static const Shortint CST_RES_LABELH_RIGHT = 0x4;
static const Shortint CST_RES_LABEL_LEFT = 0x5;
static const Shortint CST_RES_LABELH_LEFT = 0x6;
static const Shortint CST_RES_MENU_ACTION = 0x7;
static const Shortint CST_RES_MENU_WINDOW = 0x8;
static const Shortint CST_ACTION_CUT = 0x1;
static const Shortint CST_ACTION_COPY = 0x2;
static const Shortint CST_ACTION_DELETE = 0x3;
static const Shortint CST_ACTION_SELECT_ALL = 0x4;
static const Shortint CST_ACTION_RESIZE_COLS = 0x5;
static const Shortint CST_ACTION_VIEW_INFO = 0x6;
static const Shortint CST_ACTION_VIEW_PROP = 0x7;
static const Shortint CST_ACTION_PAUSE = 0x8;
static const Shortint CST_ACTION_SAVE = 0x9;
static const Shortint CST_ACTION_CLEAR_ALL = 0xa;
static const Shortint CST_ACTION_CLOSE_WIN = 0xb;
static const Shortint CST_ACTION_RESUME = 0xc;
static const Shortint CST_ACTION_LABEL_INFO = 0x14;
static const Shortint CST_ACTION_LABEL_LOGFILE = 0x15;
static const Shortint CST_ACTION_VIEW_MAIN = 0x32;
static const Shortint CST_ACTION_VIEW_ODS = 0x33;
static const Shortint CST_ACTION_OPEN_XML = 0x34;
static const Shortint CST_ACTION_EVENTLOG = 0x35;
static const Shortint CST_ACTION_TAIL = 0x36;
static const Shortint CST_ENTER_DEBUG_MODE = 0x6b;
static const Shortint CST_LEAVE_DEBUG_MODE = 0x6c;
static const Shortint CST_OPEN_TAIL = 0x6d;
static const Shortint CST_OPEN_XML = 0x71;
static const Word CST_GET_OBJECT = 0x2bc;
static const Word CST_FLUSH = 0x320;
static const Shortint CST_GOTO_FIRST_NODE = 0x50;
static const Shortint CST_GOTO_LAST_NODE = 0x51;
static const Shortint CST_FIND_NEXT = 0x52;
static const Shortint CST_GOTO_BOOKMARK = 0x53;
static const Shortint CST_CLEAR_BOOKMARK = 0x54;
static const Shortint CST_CLEAR_FILTER = 0x55;
static const Shortint CST_ADD_FILTER = 0x56;
static const Shortint CST_APPLY_FILTER = 0x57;
static const Shortint CST_TREE_COLUMNWIDTH = 0x5d;
static const Shortint CST_TREE_MULTI_COLUMN = 0x5f;
static const Shortint CST_TREE_COLUMNTITLE = 0x60;
static const Shortint CST_DISPLAY_TREE = 0x61;
static const Shortint CST_TREE_NAME = 0x62;
static const Shortint CST_USE_TREE = 0x63;
static const Shortint CST_CLEAR_ALL = 0x68;
static const Shortint CST_CLOSE_WIN = 0x69;
static const Shortint CST_WINWATCH_NAME = 0x6e;
static const Shortint CST_WINWATCH_ID = 0x6f;
static const Shortint CST_WATCH_NAME = 0x70;
static const Word CST_SAVETOTEXT = 0x22f;
static const Word CST_SAVETOXML = 0x230;
static const Word CST_LOADXML = 0x231;
static const Word CST_LOGFILE = 0x232;
static const Word CST_LINKTOPLUGIN = 0x233;
static const Word CST_CREATE_RESOURCE = 0x234;
static const Word CST_SET_TEXT_RESOURCE = 0x235;
static const Word CST_DISABLE_RESOURCE = 0x236;
static const Shortint CST_FIND_TEXT = 0x64;
static const Shortint CST_SHOW = 0x66;
static const Shortint CST_CLOSE_VIEWER = 0x6a;
static const Shortint CST_TRACE_ID = 0x65;
static const Shortint CST_ICO_INDEX = 0x67;
static const Shortint CST_GOTO_NEXTSIBLING = 0x72;
static const Shortint CST_GOTO_PREVSIBLING = 0x73;
static const Shortint CST_GOTO_FIRST_CHILD = 0x74;
static const Shortint CST_GOTO_LAST_CHILD = 0x75;
static const Shortint CST_SET_BOOKMARK2 = 0x7a;
static const Shortint CST_VISIBLE_NODE = 0x7b;
static const Word CST_CLEAR_NODE = 0x12c;
static const Word CST_CLEAR_SUBNODES = 0x12d;
static const Word CST_THREAD_ID = 0x12e;
static const Word CST_PROCESS_NAME = 0x12f;
static const Word CST_MESSAGE_TIME = 0x130;
static const Word CST_THREAD_NAME = 0x131;
static const Word CST_IP = 0x132;
static const Word CST_NEW_NODE = 0x226;
static const Word CST_LEFT_MSG = 0x227;
static const Word CST_RIGHT_MSG = 0x228;
static const Word CST_SELECT_NODE = 0x229;
static const Word CST_GET_NODE = 0x22a;
static const Word CST_USE_NODE = 0x22b;
static const Word CST_APPEND_LEFT_MSG = 0x22c;
static const Word CST_APPEND_RIGHT_MSG = 0x22d;
static const Word CST_FOCUS_NODE = 0x22e;
static const Word CST_FONT_DETAIL = 0x237;
static const Word CST_BACKGROUND_COLOR = 0x238;
static const Word CST_CREATE_MEMBER = 0x1f4;
static const Word CST_MEMBER_FONT_DETAIL = 0x1f5;
static const Word CST_MEMBER_COL2 = 0x1f6;
static const Word CST_MEMBER_VIEWER_KIND = 0x1f7;
static const Word CST_MEMBER_COL3 = 0x1f8;
static const Word CST_ADD_MEMBER = 0x1f9;
extern PACKAGE TSocketTrace* AlternateSend;
extern PACKAGE TSendStackProc SendStackProc;
extern PACKAGE TSendCallerProc SendCallerProc;
extern PACKAGE TSendMethodProc SendMethodProc;
extern PACKAGE HWND __fastcall StartDebugWin(void);
extern PACKAGE AnsiString __fastcall TT_getVariantType(const _di_ITypeInfo TypeInfo, const Activex::PTypeDesc 
	ObjTypeDesc)/* overload */;
extern PACKAGE AnsiString __fastcall TT_getVariantType(const int VarType)/* overload */;
extern PACKAGE AnsiString __fastcall TT_GetDispatchName(const _di_IDispatch Disp);
extern PACKAGE void __fastcall TT_GetDispathDescriptions(const _di_IDispatch Disp, AnsiString &strGuid
	, AnsiString &strProg, AnsiString &strTypeLibGuid, AnsiString &strTypeLib)/* overload */;
extern PACKAGE void __fastcall TT_GetDispathDescriptions(const Activex::PTypeAttr TypeAttr, AnsiString 
	&strGuid, AnsiString &strProg, AnsiString &strTypeLibGuid, AnsiString &strTypeLib)/* overload */;
extern PACKAGE AnsiString __fastcall TT_GetVarValue(const Variant &v)/* overload */;
extern PACKAGE AnsiString __fastcall TT_GetVarValue(const Variant &v, AnsiString &strType)/* overload */
	;
extern PACKAGE void __fastcall TT_SetCurrentThreadName(const AnsiString Name);

}	/* namespace Tracetool */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Tracetool;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// TraceTool
