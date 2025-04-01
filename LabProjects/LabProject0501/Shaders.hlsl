float4 VSMain( uint nVertexID : SV_VertexID) : SV_Position
{
    float4 output = (float4)0;
    
     //프리미티브(삼각형)를 구성하는 정점의 인덱스(SV_VertexID)에 따라 정점을 반환한다.
    //정점의 위치 좌표는 변환이 된 좌표(SV_POSITION)이다. 즉, 투영좌표계의 좌표이다.
    if (nVertexID == 0)
        output = float4(-1.0f, +1.0f, 0.0f, 1.0f);
    else if (nVertexID == 1)
        output = float4(+1.0f, +1.0f, 0.0f, 1.0f);
    else if (nVertexID == 2)
        output = float4(+1.0f, -1.0f, 1.0f, 1.0f);
    else if (nVertexID == 3)
        output = float4(-1.0f, +1.0f, 0.0f, 1.0f);
    else if (nVertexID == 4)
        output = float4(+1.0f, -1.0f, 0.0f, 1.0f);
    else if (nVertexID == 5)
        output = float4(-1.0f, -1.0f, 0.0f, 1.0f);
    // 사각형의 각 정점에 맞춰서 좌표를 설정
    
    return (output);
}

#define FRAME_BUFFER_WIDTH 640.0f
#define FRAME_BUFFER_HEIGHT 480.0f

float4 PSMain(float4 input : SV_POSITION) : SV_TARGET
{
    // 들어온 좌표의 좌표값에 따라서 색상이 자동으로 할당
    float4 cColor = float4(0.0f, 0.0f, 0.0f, 1.0f);
    //cColor.rgb = distance(float2(0.0f, 0.0f), input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT));
    //cColor.rgb = length(input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT));
    //cColor.rgb = distance(float2(0.0f, 0.0f), (input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT) - 0.5f)); // (0, 1) : (-0.5, 0.5)
    //cColor.rgb = length(input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT) - 0.5f);
    cColor.rgb = distance(float2(0.5f, 0.5f), input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT));
    return (cColor);
}