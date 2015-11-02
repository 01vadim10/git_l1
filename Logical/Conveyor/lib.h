/*
	�������� ����������:
  	���� ��������� ���� �� ���������� ���������� 1, ����� 0
*/
BOOL blockingCheck(BOOL PrElmOn, BOOL DownControl, BOOL BordersControl, BOOL MoveControl)
{
	BOOL out;
	out = 0;
	if (PrElmOn || DownControl || BordersControl || MoveControl)
		out = 1;
	
	return out;
}


/* 	
	Mode = 0 - ������ �����
	Mode = 1 - �������. �����
*/
BOOL blockingCheckMode(BOOL Mode, BOOL Ready, BOOL ElmBeltStart)
{
	BOOL out;
	out = 0;
	if (Mode == 0)
		out = !Ready;
	else out = !ElmBeltStart;
	
	return out;
}

/*	
	������ ���������
	ConvStart - ���������� DO, ������� ��������� ������ ��������
*/
void convH2XXStart(BOOL ConvStart)
{
	ConvStart = 1;
}

/*	
	��������� ���������
	ConvStart - ���������� DO, ������� ��������� ������ ��������
*/
void convH2XXStop(BOOL ConvStart)
{
	ConvStart = 0;
}

/*
	convH2XX_DO_B - ���������� ������������� � ������ ������, ���������� �� ������ ��������� ("����/����")
*/
void convH2XX(BOOL PrElmOn, BOOL DownControl, BOOL BordersControl, BOOL MoveControl, BOOL Mode, BOOL Ready, BOOL ElmBeltStart,
	BOOL ConvStart)
{
	if (!blockingCheck(PrElmOn, DownControl, BordersControl, MoveControl)/* && !blockingCheckMode(Mode, Ready, ElmBeltStart)*/ &&
		convH2XX_DO_B)
		convH2XXStart(ConvStart);
	else convH2XXStop(ConvStart);
}