module ArrayFire.Internal.Graphics where

import ArrayFire.Internal.Defines

import Data.Word

import Data.Int

#include "graphics.h"

#include "extra.h"

import Foreign.Ptr

foreign import ccall unsafe "af_set_position"
    af_set_position :: AFWindow -> Word32 -> Word32 -> IO AFErr
foreign import ccall unsafe "af_set_title"
    af_set_title :: AFWindow -> Ptr Char -> IO AFErr
foreign import ccall unsafe "af_set_size"
    af_set_size :: AFWindow -> Word32 -> Word32 -> IO AFErr
foreign import ccall unsafe "af_draw_image"
    af_draw_image :: AFWindow -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_plot"
    af_draw_plot :: AFWindow -> AFArray -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_plot3"
    af_draw_plot3 :: AFWindow -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_plot_nd"
    af_draw_plot_nd :: AFWindow -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_plot_2d"
    af_draw_plot_2d :: AFWindow -> AFArray -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_plot_3d"
    af_draw_plot_3d :: AFWindow -> AFArray -> AFArray -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_scatter"
    af_draw_scatter :: AFWindow -> AFArray -> AFArray -> AFMarkerType -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_scatter3"
    af_draw_scatter3 :: AFWindow -> AFArray -> AFMarkerType -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_scatter_nd"
    af_draw_scatter_nd :: AFWindow -> AFArray -> AFMarkerType -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_scatter_2d"
    af_draw_scatter_2d :: AFWindow -> AFArray -> AFArray -> AFMarkerType -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_scatter_3d"
    af_draw_scatter_3d :: AFWindow -> AFArray -> AFArray -> AFArray -> AFMarkerType -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_hist"
    af_draw_hist :: AFWindow -> AFArray -> Double -> Double -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_surface"
    af_draw_surface :: AFWindow -> AFArray -> AFArray -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_vector_field_nd"
    af_draw_vector_field_nd :: AFWindow -> AFArray -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_vector_field_3d"
    af_draw_vector_field_3d :: AFWindow -> AFArray -> AFArray -> AFArray -> AFArray -> AFArray -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_draw_vector_field_2d"
    af_draw_vector_field_2d :: AFWindow -> AFArray -> AFArray -> AFArray -> AFArray -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_grid"
    af_grid :: AFWindow -> Int -> Int -> IO AFErr
foreign import ccall unsafe "af_set_axes_limits_compute"
    af_set_axes_limits_compute :: AFWindow -> AFArray -> AFArray -> AFArray -> Bool -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_set_axes_limits_2d"
    af_set_axes_limits_2d :: AFWindow -> Float -> Float -> Float -> Float -> Bool -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_set_axes_limits_3d"
    af_set_axes_limits_3d :: AFWindow -> Float -> Float -> Float -> Float -> Float -> Float -> Bool -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_set_axes_titles"
    af_set_axes_titles :: AFWindow -> Ptr Char -> Ptr Char -> Ptr Char -> Ptr AFCell -> IO AFErr
foreign import ccall unsafe "af_show"
    af_show :: AFWindow -> IO AFErr
foreign import ccall unsafe "af_is_window_closed"
    af_is_window_closed :: Ptr Bool -> AFWindow -> IO AFErr
foreign import ccall unsafe "af_set_visibility"
    af_set_visibility :: AFWindow -> Bool -> IO AFErr
foreign import ccall unsafe "af_destroy_window"
    af_destroy_window :: AFWindow -> IO AFErr