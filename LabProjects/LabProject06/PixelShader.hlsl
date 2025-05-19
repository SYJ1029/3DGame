#define FRAME_BUFFER_WIDTH 800.0f
#define FRAME_BUFFER_HEIGHT 600.0f

struct VS_OUTPUT
{
    float4 position : SV_POSITION;
    float4 color : COLOR;
};

float4 PSMain(VS_OUTPUT input) : SV_TARGET
{
 //입력되는 픽셀의 색상을 그대로 출력-병합 단계(렌더 타겟)로 출력한다. 
    return (input.color);
}