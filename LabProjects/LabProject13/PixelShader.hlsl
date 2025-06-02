#define FRAME_BUFFER_WIDTH 800.0f
#define FRAME_BUFFER_HEIGHT 600.0f

struct VS_OUTPUT
{
    float4 position : SV_POSITION;
    float4 color : COLOR;
};

struct VS_INSTANCING_OUTPUT
{
    float4 position : SV_POSITION;
    float4 color : COLOR;
};

float4 PSDiffused(VS_OUTPUT input) : SV_TARGET
{
    return (input.color);
}

float4 PSInstancing(VS_INSTANCING_OUTPUT input) : SV_TARGET
{
    return (input.color);
}