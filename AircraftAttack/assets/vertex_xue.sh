uniform mat4 uMVPMatrix; //总变换矩阵
attribute vec3 aPosition;  //顶点位置
attribute vec2 aTexCoor;    //顶点纹理坐标
varying vec2 vTextureCoord;  //用于传递给片元着色器的变量
varying float vertexHeight;//接受顶点的高度值
varying float vertexwhidth;//接受血的最左边位置
void main()     
{     
   gl_Position = uMVPMatrix * vec4(aPosition,1); //根据总变换矩阵计算此次绘制此顶点位置
   vTextureCoord = aTexCoor;//将接收的纹理坐标传递给片元着色器
   vertexHeight = aPosition.y;//将该顶点的高度传入片元着色器
   vertexwhidth=aPosition.x;
}                 