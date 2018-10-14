close all
clear all
if true
  FDetect = vision.CascadeObjectDetector;
vidDevice = imaq.VideoDevice('winvideo', 1, 'YUY2_640x480', ... % Acquire input video stream
                  'ROI', [1 1 640 480], ...
                  'ReturnedColorSpace', 'rgb');

  
rgbFrame=step(vidDevice);
BB = step(FDetect,rgbFrame);
imshow(rgbFrame);hold on
for i = 1:size(BB,1)
  rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
end
clear all
end
